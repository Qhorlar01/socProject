% MODELING PLOTS

% FIGURE MUST CONTAIN:
% PLOT 1 - Vt
% PLOT 2 - Z
% PLOT 3 - Vp

clc

% Vt simulation
f1 = figure(1); set(f1,'name','Baterry modeling - Vt'); % Setting figure name
subplot(411), plot(t,Vt); grid on; xlim([0, 25000]); % Add grid 
%[l1] = legend('$$V_t$$ - Terminal voltage', 'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;



subplot(412), plot(t,I); grid on; ylim([-5.5, 0]); xlim([0, 25000]); % Add grid 
%[l2] = legend('$$I$$ - Terminal current', 'Interpreter', 'latex');
%l2.FontSize = 12;
[t2] = title('Current $$I$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex')
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Current [A]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;

subplot(413), plot(t,100*Z); grid on; xlim([0, 25000]); % Add grid 
%[l1] = legend('$$V_t$$ - Terminal voltage', 'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;

subplot(414), plot(t,Vp); grid on; ylim([-0.01, 0.02]); xlim([0, 25000]); % Add grid 
%[l2] = legend('$$I$$ - Terminal current', 'Interpreter', 'latex');
%l2.FontSize = 12;
[t2] = title('Polarization voltage $$V_p$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex')
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Voltage [V]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;

% SOC and Vp

% Vt simulation
f2 = figure(2); set(f2,'name','Baterry modeling - SOC and Vp'); % Setting figure name
subplot(211), plot(t,100*Z); grid on; xlim([0, 25000]); % Add grid 
%[l1] = legend('$$V_t$$ - Terminal voltage', 'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;

subplot(212), plot(t,Vp); grid on; ylim([-0.01, 0.02]); xlim([0, 25000]); % Add grid 
%[l2] = legend('$$I$$ - Terminal current', 'Interpreter', 'latex');
%l2.FontSize = 12;
[t2] = title('Polarization voltage $$V_p$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex')
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Voltage [V]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;


% Vt simulation
f3 = figure(3); set(f3,'name','Baterry modeling - Vt'); % Setting figure name
subplot(211), plot(t,Vt); grid on; xlim([0, 25000]); % Add grid 
%[l1] = legend('$$V_t$$ - Terminal voltage', 'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;



subplot(212), plot(t,I); grid on; ylim([-5.5, 0]); xlim([0, 25000]); % Add grid 
%[l2] = legend('$$I$$ - Terminal current', 'Interpreter', 'latex');
%l2.FontSize = 12;
[t2] = title('Current $$I$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex')
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Current [A]', 'Interpreter', 'latex');
ax = gca; ax.FontSize = 13;
ax.XAxis.Exponent = 0;
