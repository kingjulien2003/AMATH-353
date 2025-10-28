%AMATH 353 HW 6

%% Question 1
L = 5;              % Length of the domain
tmax = 10;          % Maximum time
N = 1000;           % Number of grid points
M = 2000;           % Number of time steps
x = linspace(-L/2,L/2,N);
dx = x(2) - x(1);
dt = tmax/M;

% Initialize the solution
u = zeros(N,M+1);
v = zeros(N,M+1);
u(:,1) = 1.*(x>=0 & x<=1) - 1.*(x>1 & x<=2);
v(:,1) = 0;

% Solve the wave equation using characteristics
for n = 1:M
    for i = 2:N-1
        u(i,n+1) = 0.5*(u(i+1,n) + u(i-1,n)) - 0.5*(dt/dx)*(v(i+1,n) - v(i-1,n));
        v(i,n+1) = 0.5*(v(i+1,n) + v(i-1,n)) - 0.5*(dt/dx)*(u(i+1,n) - u(i-1,n));
    end
    u(1,n+1) = u(2,n+1);
    u(N,n+1) = u(N-1,n+1);
    v(1,n+1) = v(2,n+1);
    v(N,n+1) = v(N-1,n+1);
end

% Plot the x-t diagram
figure;
imagesc(linspace(0,tmax,M+1),x,u);
xlabel('t');
ylabel('x');
title('x-t Diagram of Wave Equation Solution');
colorbar;

%% Question 2



%% When t = 1
% Define the parameters
L = 10;             % Length of the domain
N = 1000;           % Number of grid points
x = linspace(-L/2,L/2,N);
dx = x(2) - x(1);
t = 1;

% Define the initial condition
f = @(x) 1*(x>=0) + 0*(x<0);

% Compute the solution
u = zeros(size(x));
for i = 1:length(x)
    if x(i) >= t
        u(i) = 0.5*(1 + f(x(i)-t));
    else
        u(i) = 0.5*f(x(i)+t);
    end
end

% Plot the solution
figure;
plot(x,u,'k-');
xlabel('x');
ylabel('u');
title(['Solution at t=',num2str(t)]);
axis([-L/2 L/2 -0.1 1.1]);
grid on;

