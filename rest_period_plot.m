% Rest periods start and end times
rest_periods = [361, 960; 1321, 1920; 2281, 2880; 3241, 3840; ...
                4201, 4800; 5161, 5760; 6121, 6720; 7081, 7680; 8041, 8640];

% Initialize a figure
f = figure;
set(f, 'name', 'Rest Periods - SOC Plot');

% Extract and plot only the rest periods
hold on; % Allow multiple plots
for i = 1:size(rest_periods, 1)
    % Extract time and corresponding SOC for each rest period
    rest_indices = t >= rest_periods(i, 1) & t <= rest_periods(i, 2);
    plot(t(rest_indices), 100 * Z(rest_indices), 'LineWidth', 1.5);
end
hold off;

% Customize the plot
grid on;
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
title('Rest Periods - State of Charge (SOC)', 'Interpreter', 'latex');
legend(arrayfun(@(i) sprintf('Rest %d', i), 1:size(rest_periods, 1), 'UniformOutput', false));
xlim([0, max(rest_periods(:, 2))]);
