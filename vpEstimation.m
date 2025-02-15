% Create a figure with two subplots for Vp estimations
figure;

% Sliding Mode Vp estimation
subplot(2,1,1);
plot(t, Vp_hat_Sli, 'g', 'LineWidth', 1);
xlim([0, 8880]);
ylim([-0.01, 0.02]); % Set y-axis limits from 0 to 0.02
grid on;
title('$$\hat{V_p}$$ Sliding Mode Estimation', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('Time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');

% Super Twisting Vp estimation
subplot(2,1,2);
plot(t, Vp_hat_Super, 'b', 'LineWidth', 1);
xlim([0, 8880]);
ylim([-0.01, 0.02]); % Set y-axis limits from 0 to 0.02
grid on;
title('$$\hat{V_p}$$ Super Twisting Estimation', 'Interpreter', 'latex', 'FontSize', 13);
xlabel('Time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
