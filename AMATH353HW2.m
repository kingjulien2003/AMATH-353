% AMATH 353 HW 2
% Figure 1
x = linspace(-4,2,40);
T0 = exp(-(x+0).^2);
T1 = exp(-(x+1).^2);
T2 = exp(-(x+2).^2);
T3 = exp(-(x+3).^2);

figure(2);
hold on;
p1 = plot(x,T0,'Color',[0 0 0],'LineStyle','-','LineWidth',3.5);
p2 = plot(x,T1,'Color',[1 0 1],'LineStyle','-','LineWidth',2);
p3 = plot(x,T2,'Color',[0 1 0],'LineStyle','-','LineWidth',2);
p4 = plot(x,T3,'Color',[0 0 1],'LineStyle','-','LineWidth',2);
hold off;
xlim([-4 2]); % adjust the domain
ylim([-2 2]); % adjust the range
xticks(-6:2:6); % adjust the x tick marks
yticks(-2:0.5:2); % adjust the y ticks marks
set(gca,'FontSize',20);
xlabel('$x$','Interpreter','latex',FontSize=25)
ylabel('$u$','Interpreter','latex',FontSize=25)
title('Figure 1, Graph of $u(x,t)=e^{-(x+t)^2}$ \\ at specific time intervals','Interpreter','latex','FontSize',35)
legend([p1 p2 p3 p4],{'t=0','t=1','t=2','t=3'},'Location','SouthWest','FontSize',20,'Interpreter','latex');
grid on;
box on;

%% Figure 2
x = -10:0.1:10; t=0:0.3:6;
[X, T] = meshgrid(x,t);
u = exp(-(X+T).^2);
pcolor(x, t, u)
xlabel('$x$','Interpreter','latex',FontSize=25)
ylabel('$t$','Interpreter','latex',FontSize=25)
zlabel('$u(x,t)$','Interpreter','latex',FontSize=25)
title('Figure 2, xt-diagram plot of $u(x,t)= e^{-(x+t)^2}$','Interpreter','latex','FontSize',35)
grid on;
box on;

%% Figure 3 3D graph
x = -10:0.1:10; t=0:0.3:6;
[X, T] = meshgrid(x,t);
u = (T.^(-1)).*exp(-(X-T).^2);
surf(x, t, u)
xlabel('$x$','Interpreter','latex',FontSize=25)
ylabel('$t$','Interpreter','latex',FontSize=25)
zlabel('$u(x,t)$','Interpreter','latex',FontSize=25)
title('Figure 3, 3D Graph of $u(x,t)= \frac{1}{t}e^{-(x-t)^2}$','Interpreter','latex','FontSize',35)
grid on;
box on;


