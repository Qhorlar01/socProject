% Ensure variables t, Vt, Z, and Vp are defined in your workspace

% Save data to an Excel file
filename = 'battery_model_data.csv';

% Select data at whole second intervals
indices = mod(t, 1) == 0; % Logical indexing for whole seconds
filteredDataMatrix = [t(indices), Vt(indices), Z(indices) * 100, Vp(indices)]; % Multiply Z by 100 for percentage

% Create column headers for clarity
columnHeaders = {'Time (s)', 'Terminal Voltage Vt (V)', 'State of Charge Z (%)', 'Polarization Voltage Vp (V)'};

% Write column headers to the CSV file
writecell(columnHeaders, filename, 'WriteMode', 'overwrite'); % Write headers

% Write filtered data to the CSV file
writematrix(filteredDataMatrix, filename, 'WriteMode', 'append'); % Write data below headers

disp(['Filtered data has been saved to ', filename]);

% MODELING PLOTS
clc

% Vt simulation
f1 = figure(1); set(f1, 'name', 'Battery modeling - Vt'); % Setting figure name
subplot(411), plot(t, Vt); grid on; xlim([0, 8880]); % Add grid 
t1 = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

subplot(412), plot(t, I); grid on; ylim([-5.5, 0]); xlim([0, 8880]); % Add grid 
t2 = title('Current $$I$$', 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Current [A]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

subplot(413), plot(t, 100 * Z); grid on; xlim([0, 8880]); % Add grid 
t3 = title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

subplot(414), plot(t, Vp); grid on; ylim([0, 0.018]); xlim([0, 8880]); % Add grid 
t4 = title('Polarization voltage $$V_p$$', 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Voltage [V]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

disp('Plots have been generated.');
