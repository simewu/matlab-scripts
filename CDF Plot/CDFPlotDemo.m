line_width = 2;
font_size = 18;

% Read data from file
data = readmatrix('Bitcoin_Numpeers.csv');
y = data(:, 3);
% Remove the 5 percentile outliers with:
% [y, TF] = rmoutliers(y, 'percentiles', [5 95]);
hold on;

% Plot the CDF
c = cdfplot(y);
set(c,'LineWidth', line_width);
set(c, 'LineStyle', '-', 'Color', 'black');
title('');

% Draw the average
avg = mean(y, 1, 'omitnan');
xline(avg, 'LineWidth', line_width, 'LineStyle', '--', 'Color', 'black', 'HandleVisibility', 'off');
text(avg + 1,0.2,'{\it x} = 32', 'FontSize' ,font_size);

% Some additional formatting
set(gca,'FontSize',font_size);
grid on;
axis square;
xlabel('Bitcoin number of peers, {\it x}');
ylabel('CDF');
xlim([0, 81]);
set(gca, 'XMinorTick','on', 'XMinorGrid','on');
set(gca, 'YMinorTick','on', 'YMinorGrid','on');
yticks([0, 0.25, 0.5, 0.75, 1]);
