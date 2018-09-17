function gain = Gdir(theta, Gmax, theta3db, flag)
% Calculates gain in given direction theta - in linear or logarithmic scale

if nargin == 3
    flag = 'db'; 
end

switch flag
    case 'db'
        gain = Gmax - 12 * (theta/(2*theta3db))^2; 
    case 'lin'
        gain = 10^((Gmax - 12 * (theta/(2*theta3db))^2)/10); 

end

