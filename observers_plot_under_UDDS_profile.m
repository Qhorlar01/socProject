clc;
% OBSERVERS PLOTS
% FIGURE MUST CONTAIN: 
% PLOT 1 - Vt estimations of the 3 observers
% PLOT 2 - SOC estimations of the 3 observers
% PLOT 3 - Vp estimations of the 3 observers

% Figure 1: LUENBERGER observer plots
f1 = figure(1); set(f1, 'name', 'Vt and SOC LUENBERGER Estimations');
% Vt estimations
subplot(3, 1, 1), plot(t, Vt_hat_Luem, 'k', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{Vt}$$ LUENBERGER', 'Interpreter', 'latex');
title('$$Vt$$ LUENBERGER Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');

% SOC estimations
subplot(3, 1, 2), plot(t, Z_hat_Luem, 'r', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{SOC}$$ LUENBERGER', 'Interpreter', 'latex');
title('$$SOC$$ LUENBERGER Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');

% Vp estimations
subplot(3, 1, 3);
plot(t, Vp_hat_Luem, 'r', 'LineWidth', 1);
xlim([0, 25000]);
ylim([-0.01, 0.02]); % Set y-axis limits from 0 to 0.02
grid on;
legend('$$\hat{Vp}$$ LUENBERGER', 'Interpreter', 'latex');
title('$$\hat{V_p}$$ Luenberger Estimation', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('Time [s]', 'Interpreter', 'latex');
ylabel('polarized voltage [V]', 'Interpreter', 'latex');

% Figure 2: SLIDING MODE observer plots
f2 = figure(2); set(f2, 'name', 'Vt and SOC SLIDING MODE Estimations');
% Vt estimations
subplot(3, 1, 1), plot(t, Vt_hat_Sli, 'g', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{Vt}$$ SLIDING MODE', 'Interpreter', 'latex');
title('$$Vt$$ SLIDING MODE Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');

% SOC estimations
subplot(3, 1, 2), plot(t, Z_hat_Sli, 'b', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{SOC}$$ SLIDING MODE', 'Interpreter', 'latex');
title('$$SOC$$ SLIDING MODE Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');

% Vp estimations
subplot(3, 1, 3); 
plot(t, Vp_hat_Sli, 'g', 'LineWidth', 1);
xlim([0, 25000]);
ylim([-0.01, 0.02]); % Set y-axis limits from 0 to 0.02
grid on;
legend('$$\hat{Vp}$$ S.M', 'Interpreter', 'latex');
title('$$\hat{V_p}$$ Sliding Mode Estimation', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('Time [s]', 'Interpreter', 'latex');
ylabel('polarized voltage [V]', 'Interpreter', 'latex');

% Figure 3: SUPER TWISTING observer plots
f3 = figure(3); set(f3, 'name', 'Vt and SOC SUPER TWISTING Estimations');
% Vt estimations
subplot(3, 1, 1), plot(t, Vt_hat_Super, 'c', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{Vt}$$ SUPER TWISTING', 'Interpreter', 'latex');
title('$$Vt$$ SUPER TWISTING Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');

% SOC estimations
subplot(3, 1, 2), plot(t, Z_hat_Super, 'm', 'LineWidth', 1.5); grid on; xlim([0, 25000]); 
legend('$$\hat{SOC}$$ SUPER TWISTING', 'Interpreter', 'latex');
title('$$SOC$$ SUPER TWISTING Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');

% Vp estimations
subplot(3, 1, 3);
plot(t, Vp_hat_Super, 'b', 'LineWidth', 1);
xlim([0, 25000]);
ylim([-0.01, 0.02]); % Set y-axis limits from 0 to 0.02
grid on;
legend('$$\hat{Vp}$$ S.T', 'Interpreter', 'latex');
title('$$\hat{V_p}$$ Super Twisting Estimation', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('Time [s]', 'Interpreter', 'latex');
ylabel('polarized Voltage [V]', 'Interpreter', 'latex');

% Combined Figure: Comparison of Vt Estimations
figure(4); set(gcf, 'name', 'Comparison of Vt Estimations');
plot(t, Vt, 'b', t, Vt_hat_Luem, 'r', t, Vt_hat_Sli, 'g', t, Vt_hat_Super, 'm', 'LineWidth', 1.5);
grid on;
legend('True Vt', '$$\hat{Vt}$$ LUENBERGER', '$$\hat{Vt}$$ SLIDING MODE', '$$\hat{Vt}$$ SUPER TWISTING', 'Interpreter', 'latex');
title('Comparison of $$Vt$$ Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');

% Combined Figure: Comparison of Soc Estimations
figure(5); set(gcf, 'name', 'Comparison of SOC Estimations');
plot(t, Z, 'b', t, Z_hat_Luem, 'r', t, Z_hat_Sli, 'g', t, Z_hat_Super, 'm', 'LineWidth', 1.5);
grid on;
legend('True SOC', '$$\hat{Z}$$ LUENBERGER', '$$\hat{Z}$$ SLIDING MODE', '$$\hat{Z}$$ SUPER TWISTING', 'Interpreter', 'latex');
title('Comparison of $$SOC$$ Estimations', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('State of Charge [%]', 'Interpreter', 'latex');

