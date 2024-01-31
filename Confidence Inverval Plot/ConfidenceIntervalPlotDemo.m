hold on;

x = [1, 2, 3]
y = [100, 75, 50]
yci = [10, 2, 15]

bar1 = bar(x(1), y(1), 'DisplayName', 'First Bar', 'FaceColor', '#10454F');
bar2 = bar(x(2), y(2), 'DisplayName', 'Second Bar', 'FaceColor', '#506266');
bar3 = bar(x(3), y(3), 'DisplayName', 'Third Bar', 'FaceColor', '#818274');
bars = [bar1, bar2, bar3]

plotConfidenceInterval(x(1), y(1), yci(1))
plotConfidenceInterval(x(2), y(2), yci(2))
plotConfidenceInterval(x(3), y(3), yci(3))

legend(bars, 'location', 'NorthEast')

% Some extra formatting to make it pretty :)
axis square;
grid on;
set(gca, 'FontSize', 18);
set(gca, 'XMinorTick','on', 'XMinorGrid','on', 'YMinorTick','on', 'YMinorGrid','on');
xlim([0 + 0.3, 4 - 0.3]);
ylim([0, 120]);

function CI = getConfidenceInterval(x)
    confidence_interval_percent=0.95
    SEM = std(x)/sqrt(length(x)); % Standard Error
    tscore = tinv([1-confidence_interval_percent  confidence_interval_percent],length(x)-1);
    CI = max(tscore*SEM);
    return;
end

function plotConfidenceInterval(x, y, yci)
    ci_color = 'black'
    ci_width = 0.1
    line_thickness = 1
    plot([x - ci_width, x + ci_width], [y - yci, y - yci], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
    plot([x - ci_width, x + ci_width], [y + yci, y + yci], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
    plot([x, x], [y - yci, y + yci], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
    
    % Add a dot in the center
    % plot(x, y, '.', 'Color', ci_color, 'MarkerSize', line_thickness*10, 'HandleVisibility', 'off')
end

% function plotHorizontalConfidenceInterval(y, x, yci)
%     ci_color = 'black'
%     ci_width = 0.1
%     line_thickness = 1
%     plot([x - yci, x - yci], [y - ci_width, y + ci_width], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
%     plot([x + yci, x + yci], [y - ci_width, y + ci_width], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
%     plot([x - yci, x + yci], [y, y], 'Color', ci_color, 'LineWidth', line_thickness, 'HandleVisibility','off');
% 
%     % Add a dot in the center
%     % plot(x, y, '.', 'Color', ci_color, 'MarkerSize', line_thickness*10, 'HandleVisibility', 'off')
% end

