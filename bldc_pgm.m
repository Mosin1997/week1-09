

%% Ques 9 - BLDC - Open and CLosed loop characteristics
clc;
clear all; 
close all;

% Motor Parameters (taken from paper)
Ke = 0.06902;
taue = 151.51*10^-6;
taum = 0.0161;

% Run the simulink model

% Matlab Code for the model
G = tf([1/Ke],[taum*taue taum 1]);
% Open and Closed Loop Responses
Gcl = feedback(G,1);
figure(1)
step(G)
hold on
step(Gcl)
grid on
legend('Open Loop Response', 'Close Loop Response')
ylabel('Speed')
xlabel('Time (sec)')

