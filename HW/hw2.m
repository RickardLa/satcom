%% Homework 2
 clear, close

B = 1e9;               % System bandwidth [Hz]
G_DC = 10^(-15/10);    % Gain of downconverter 
k = 1.3806e-23;        % Boltzmann constant 
power = @(T) k*T*B;    % Noise power [W]

% Effective input temperatures [K]
T_RF = 330;
T_DC = 580; 
T_IF = 850; 
T_Hot = 390; 
T_Warm = 290;    

flag = 'hot';
switch flag
    case 'antenna'
        P_out = 6e-3;
    case 'hot'
        P_out = 8.5e-3;
    case 'warm'
        P_out = 7.2e-3;
end
    

G = 10*log10(P_out/(k*B*T_Warm))







