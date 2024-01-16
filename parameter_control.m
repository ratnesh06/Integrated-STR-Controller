% EE582: Adaptive Control
%
%
% Simulation is facilitated via SIMULINK

out = sim("control_block.slx"); % Run Simulink 

% Plot the simulation results
% figure(1)
% subplot(2,1,1)
% plot(out.tout, out.Y,'--b', LineWidth=3); hold on;
% plot(out.tout, out.Ym,'--r', LineWidth=3); hold on;
% plot(out.tout, out.Y1,'--y', LineWidth=3); hold on;
% hold off;
% xlabel('Time (s)','FontSize',20)
% ylabel('Output','FontSize',20)
% legend('closed-loop response(rudder)','reference model(rudder)','uncompensated response', 'FontSize',20)
% 
% subplot(2,1,2)
% plot(out.tout, out.U1,'--m', LineWidth=3); hold on;
% plot(out.tout, out.U,'--b', LineWidth=3); hold off;
% xlabel('Time (s)','FontSize',20)
% ylabel('Closed-loop control','FontSize',20)
% legend('Uncompensated closed-loop control(rudder)', 'Compensated closed-loop control(rudder)','FontSize',20)
% 
% 
% figure(2)
% subplot(2,1,1)
% plot(out.tout, out.Y3,'--b', LineWidth=3); hold on;
% plot(out.tout, out.Ym1,'--r', LineWidth=3); hold on;
% plot(out.tout, out.Y2,'--y', LineWidth=3); hold on;
% hold off;
% xlabel('Time (s)','FontSize',20)
% ylabel('Output','FontSize',20)
% legend('closed-loop response(thruster)','reference model(thruster)','uncompensated response', 'FontSize',20)
% 
% subplot(2,1,2)
% plot(out.tout, out.U2,'--m', LineWidth=3); hold on;
% plot(out.tout, out.U3,'--b', LineWidth=3); hold off;
% xlabel('Time (s)','FontSize',20)
% ylabel('Closed-loop control','FontSize',20)
% legend('Uncompensated closed-loop control', 'Compensated closed-loop control','FontSize',20)

figure(1)
subplot(1,1,1)
plot(out.tout, out.Y4,'--b', LineWidth=3); hold on;
plot(out.tout, out.Ym2,'--r', LineWidth=3); hold on;
plot(out.tout, out.Y7,'--black', LineWidth=3); hold on;
hold off;
xlabel('Time (s)','FontSize',20)
ylabel('Output','FontSize',20)
legend('closed-loop response(rudder)','reference model(rudder)','uncompensated closed-loop response','FontSize',20)

figure(2)
subplot(1,1,1)
plot(out.tout, out.Y5,'--b', LineWidth=3); hold on;
plot(out.tout, out.Ym3,'--r', LineWidth=3); hold on;
plot(out.tout, out.Y6,'--black', LineWidth=3); hold on;
hold off;
xlabel('Time (s)','FontSize',20)
ylabel('Output','FontSize',20)
legend('closed-loop response(thruster)','reference model(thruster)','uncompensated closed-loop response','FontSize',20)