figure
subplot(2,1,1)
plot(SP.time, SP.signals.values);
hold on
plot(PV.time, PV.signals.values);
hold off
legend('Reference', 'Output')
xlabel('Time (s)')
ylabel('Amplitude (Degree)')
title('Step Response')
grid on
ylim([0,65])

subplot(2,1,2)
plot(MV.time, MV.signals.values);
xlabel('Time (s)')
ylabel('Amplitude (Degree)')
title('Manipulated Variable Response')
legend('Output')
grid on