subplotColumns = 3;
subplotRows = 1;

figure('Position', [100 100 1400 450])

subplot(subplotRows, subplotColumns, 1);
hold on;
x = 0:0.1:2*pi;
y = sin(x);
area(x, y, 'FaceColor', '#348888', 'EdgeColor', 'none');
plot(x, y, 'black', 'LineWidth', 2);
grid on;
xlim([0, 2*pi]);
ylim([-1, 1]);
set(gca, 'FontSize', 18);
xlabel('$\sin(x)$', 'Interpreter', 'latex');

subplot(subplotRows, subplotColumns, 2);
hold on;
x = -1:0.1:3;
y = (x - 1).^2;
area(x, y, 'FaceColor', '#9EF8EE', 'EdgeColor', 'none');
plot(x, y, 'black', 'LineWidth', 2);
grid on;
set(gca, 'XMinorTick','on', 'XMinorGrid','on', 'YMinorTick','on', 'YMinorGrid','on');
xlim([-1, 3]);
ylim([0, 2]);
set(gca, 'FontSize', 18);
xlabel('$(x-1)^2$', 'Interpreter', 'latex');

subplot(subplotRows, subplotColumns, 3);
hold on;
x = 0:0.1:pi;
y = tan(x);
area(x, y, 'FaceColor', '#F24405', 'EdgeColor', 'none');
plot(x, y, 'black', 'LineWidth', 2);
grid on;
xlim([0, pi]);
ylim([-2, 2]);
set(gca, 'FontSize', 18);
xlabel('$\tan(x)$', 'Interpreter', 'latex');