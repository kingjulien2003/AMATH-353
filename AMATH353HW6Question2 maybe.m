% Define the parameters
L = 10;             % Length of the domain
tmax = 3;           % Maximum time
N = 1000;           % Number of grid points
x = linspace(-L/2,L/2,N);
dx = x(2) - x(1);
dt = 0.9*dx;        % CFL condition for stability

% Initialize the solution
u = zeros(N,length(0:dt:tmax));

% Set initial conditions
for i=1:N
    if x(i) < 0
        u(i,1) = 0;
    else
        u(i,1) = x(i);
    end
end

% Set additional initial condition for n=-1
for i=2:N-1
    u(i,2) = u(i,1) + 0.5*(dt/dx)^2*(u(i+1,1)-2*u(i,1)+u(i-1,1));
end

% Solve the wave equation
for n=2:length(0:dt:tmax)-1
    for i=2:N-1
        u(i,n+1) = 2*u(i,n) - u(i,n-1) + (dt/dx)^2*(u(i+1,n)-2*u(i,n)+u(i-1,n));
    end
end

% Plot the solution as a 2D graph with t on y-axis and x on x-axis
figure;
imagesc(x,(0:dt:tmax),u);
xlabel('x');
ylabel('t');
title('Wave Equation Solution as a 2D Graph');
axis([-L/2 L/2 0 tmax]);
colorbar;

% Reverse the y-axis direction so that t starts at 0 on the bottom of the y-axis
set(gca,'YDir','normal');
