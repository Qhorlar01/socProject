clc
% OBSERVERS PLOTS

% FIGURE MUST CONTAIN:
%UDDS Drive cycle plot 


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

