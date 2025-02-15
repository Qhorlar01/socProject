% Known times of the 10 lowest points
low_times = [360, 1320, 2280, 3240, 4200, 5160, 6120, 7080, 8040, 8880];

% Find the corresponding indices in the time vector `t`
[~, indices] = ismember(low_times, t); % Indices of these times in the `t` array

% Extract the corresponding voltages and SOC values
low_voltages = Vt(indices);
low_soc = 100 * Z(indices);

% Create a single figure with subplots
f = figure;
set(f, 'name', 'Battery Modeling - Voltage and SOC');

% Plot 1: Terminal Voltage
subplot(2, 1, 1); % 2 rows, 1 column, 1st subplot
plot(t, Vt);
grid on;
xlim([0, 8880]);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
hold on;
plot(low_times, low_voltages, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5); % Mark low points
for i = 1:length(low_times)
    text(low_times(i), low_voltages(i), sprintf('%.2f V', low_voltages(i)), ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', 10, 'Color', 'red');
end
hold off;

% Plot 2: State of Charge (SOC)
subplot(2, 1, 2); % 2 rows, 1 column, 2nd subplot
plot(t, 100 * Z);
grid on;
xlim([0, 8880]);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
hold on;
plot(low_times, low_soc, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5); % Mark low points
for i = 1:length(low_times)
    text(low_times(i), low_soc(i), sprintf('%.2f%%', low_soc(i)), ...
        'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'FontSize', 10, 'Color', 'red');
end
hold off;
