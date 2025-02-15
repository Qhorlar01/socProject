clc
% OBSERVERS PLOTS

% FIGURE MUST CONTAIN: 
% PLOT 1 - Vt estimations of the 3 observers
% PLOT 2 - Z estimations of the 3 observers (SOC estimation)
% PLOT 3 - Vp estimations of the 3 observers

f1 = figure(1); set(f1,'name','Baterry modeling - Vt'); % Setting figure name
plot(t,Vt,'--',t,Vt_hat_Luem,t,Vt_hat_Sli,t,Vt_hat_Super,'LineWidth',1.5); grid on;% ylim([3.5,5.5]); xlim([0, 5]); % Add grid 
[l1] = legend('$$V_t$$ Model','$$\hat{V}_t$$ Luenberger','$$\hat{V}_t$$ Classic S.M.',...
    '$$\hat{V}_t$$ Super Twisting',  'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

f2 = figure(2); set(f2,'name','Baterry modeling - Z'); % Setting figure name
plot(t,Z,'--',t,Z_hat_Luem,t,Z_hat_Sli,t,Z_hat_Super,'LineWidth',1.5); grid on; %ylim([0.8,2]); xlim([0, 5]); % Add grid 
[l2] = legend('$$Z$$ Model','$$\hat{Z}$$ Luenberger','$$\hat{Z}$$ Classic S.M.',...
    '$$\hat{Z}$$ Super Twisting',  'Interpreter', 'latex');
%l1.FontSize = 12;
[t2] = title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

f3 = figure(3); set(f3,'name','Driving Cycle - UDDS'); % Setting figure name
subplot(211), plot(t,driving_cycle,'LineWidth',1.5); grid on;% ylim([3.5,5.5]); xlim([0, 5]); % Add grid 
%l1.FontSize = 12;
[t3] = title('UDDS Driving Cycle', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Speed [km/h]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

subplot(212), plot(t,-I,'LineWidth',1.5); grid on;% ylim([3.5,5.5]); xlim([0, 5]); % Add grid 
%l1.FontSize = 12;
[t4] = title('UDDS Current Profile', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Current [A]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

f4 = figure(4); set(f4,'name','Baterry modeling - Vt'); % Setting figure name
subplot(211),plot(t,Vt,'--',t,Vt_hat_Luem,t,Vt_hat_Sli,t,Vt_hat_Super,'LineWidth',1.5); grid on; ylim([3.5,5.5]); xlim([0, 5]); % Add grid 
[l1] = legend('$$V_t$$ Model','$$\hat{V}_t$$ Luenberger','$$\hat{V}_t$$ Classic S.M.',...
    '$$\hat{V}_t$$ Super Twisting',  'Interpreter', 'latex');
%l1.FontSize = 12;
[t1] = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

subplot(212), plot(t,Z,'--',t,Z_hat_Luem,t,Z_hat_Sli,t,Z_hat_Super,'LineWidth',1.5); grid on; ylim([0.8,1.2]); xlim([0, 5]); % Add grid 
[l2] = legend('$$Z$$ Model','$$\hat{Z}$$ Luenberger','$$\hat{Z}$$ Classic S.M.',...
    '$$\hat{Z}$$ Super Twisting',  'Interpreter', 'latex');
%l1.FontSize = 12;
[t2] = title('State of charge (SOC) $$Z$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('SOC [\%]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;

%{
subplot(212), plot(t,Vt,'--',t,Vt_hat_Luem,t,Vt_hat_Sli,t,Vt_hat_Super); grid on; ylim([3.5,5.5]); xlim([0, 5]); % Add grid 
[l2] = legend('$$V_t$$ Model','$$\hat{V}_t$$ Luemberger','$$\hat{V}_t$$ Classic S.M.',...
    '$$\hat{V}_t$$ Super Twisting',  'Interpreter', 'latex');
%l1.FontSize = 12;
[t2] = title('Terminal voltage $$V_t$$', 'Interpreter', 'latex');
%t1.FontSize = 12; set(t1, 'Interpreter', 'latex');
xlabel('time [s]', 'Interpreter', 'latex');
ylabel('Cell Voltage [V]', 'Interpreter', 'latex');
%%axis tight
ax = gca; ax.FontSize = 12;
ax.XAxis.Exponent = 0;
%}


