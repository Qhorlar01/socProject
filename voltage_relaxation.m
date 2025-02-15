plot(t, Vt);
grid on;
xlim([358, 958]);
ylim([2.98, 5]);
xticks(358:100:958); % Set time axis ticks to 360, 370, 380, ...
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
title('Terminal voltage Relaxation $$V_t$$', 'Interpreter', 'latex');
hold on;
hold off;
