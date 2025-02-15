% Known times of the 11 lowest points (including t = 0)
low_times = [0, 360, 1320, 2280, 3240, 4200, 5160, 6120, 7080, 8040, 8880];

% Find the corresponding indices in the time vector `t`
[~, indices] = ismember(low_times, t); % Indices of these times in the `t` array

% Extract the corresponding voltages and SOC values
low_voltages = Vt(indices);    % Vt values for the lowest points
low_soc = 100 * Z(indices);    % SOC values for the lowest points (scaled)

% Plot the relationship between SOC and Terminal Voltage
f3 = figure;
set(f3, 'name', 'SOC vs Terminal Voltage');
plot(low_soc, low_voltages, 'ro-', 'MarkerSize', 8, 'LineWidth', 1.5); % Line with points
grid on;
xlabel('SOC [%]', 'Interpreter', 'latex');
ylabel('Terminal Voltage [V]', 'Interpreter', 'latex');
title('Relationship between SOC and Terminal Voltage', 'Interpreter', 'latex');

% Set the axis limits
xlim([0, 100]); % X-axis limits
ylim([2.437, 4.2]); % Y-axis limits

% Annotate the points
for i = 1:length(low_times)
    text(low_soc(i), low_voltages(i), sprintf('(%d%%, %.2f V)', round(low_soc(i)), low_voltages(i)), ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', 10, 'Color', 'blue');
end
