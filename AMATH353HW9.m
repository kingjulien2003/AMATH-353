%AMATH 353 HW 9

%% Question 1
x = 0:0.001:1;
k = 1;
u1 = 1;
v1 = 1;

phi_1 = v1*(1 - (x ./ u1)).*x;
phi_2 = k.*log(u1 ./ x).*x;

figure(1);  % Create Figure 1
hold on;
p1 = plot(x,phi_1);
p2 = plot(x,phi_2);
hold off;
ylabel('$\phi$','Interpreter','latex');
xlabel('$u(x,t)$','Interpreter','latex');
legend([p1, p2])
xlim([0 1]); % adjust the domain
ylim([0 0.4]); % adjust the ran'ge
legend([p1 p2],{'Model 1','Model 2'},'Location','NorthEast','Interpreter','latex');
title('Graph of both $\phi$ functions.','Interpreter','latex');
grid on;
box on;


%% Question 1b
x = 0:0.001:1;
k = 1;
u1 = 1;
v1 = 1;

phi_1 = v1*(1 - (x ./ u1));
phi_2 = k.*log(1./x);

figure(2);  
hold on;
p1 = plot(x,phi_1);
p2 = plot(x,phi_2);
hold off;
ylabel('$v(u)$','Interpreter','latex');
xlabel('$u(x,t)$','Interpreter','latex');
legend([p1, p2])
%xlim([0 0.6]); % adjust the domain
ylim([0 5]); % adjust the range
legend([p1 p2],{'Model 1','Model 2'},'Location','NorthEast','Interpreter','latex');
title('Graph of both velocity functions.','Interpreter','latex');
grid on;
box on;


%% Question 2
x = 0:0.001:10;

f0 = real(sqrt(2* log(x ./ 0.5)));
f1 = real(sqrt(2* log(x./ 1)));
f2 = real(sqrt(2* log(x./ 2)));
f3 = real(sqrt(2* log(x./ 3)));
f4 = real(sqrt(2* log(x./ 4)));
f5 = real(sqrt(2* log(x./ 5)));


figure(3);  
hold on;
p0 = plot(x,f0);
p1 = plot(x,f1);
p2 = plot(x,f2);
p3 = plot(x,f3);
p4 = plot(x,f4);
p5 = plot(x,f5);

hold off;
ylabel('$t$','Interpreter','latex');
xlabel('$x$','Interpreter','latex');
xlim([0 10]); % adjust the domain
ylim([0 3]); % adjust the range
title('Question 2 Graph of Characteristics','Interpreter','latex');
grid on;
box on;

%% Question 3
x = 0:0.01:10;

f1 = real(log(x./1));
f2 = real(log(x./2));
f3 = real(log(x./3));
f4 = real(log(x./4));
f5 = real(log(x./5));


figure(4);  
hold on;
p1 = plot(x,f1);
p2 = plot(x,f2);
p3 = plot(x,f3);
p4 = plot(x,f4);
p5 = plot(x,f5);
hold off;

ylabel('$t$','Interpreter','latex');
xlabel('$x$','Interpreter','latex');
xlim([0 10]); % adjust the domain
ylim([0 3]); % adjust the range
title('Question 3 Graph of Characteristics','Interpreter','latex');
grid on;
box on;
