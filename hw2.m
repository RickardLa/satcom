%% Homework 2
clc, clear, close

B = 1e9;               % System bandwidth [Hz]
G_DC = 10^(-15/10);    % Gain of downconverter 
k = 1.3806e-23;        % Boltzmann constant 

% Effective input temperatures [K]
T_RF = 330;
T_DC = 580; 
T_IF = 850; 
T_Hot = 390; 
T_Warm = 290;    

% Measured output power [W]
P_Hot = 8.5e-3; 
P_Warm = 7.2e-3; 
P_antenna = 6e-3; 


