function flux = fluxdensity(Pt, Gt, R, flag)
% Calculates flux density - dBWm^-2 or Wm^-2

if nargin == 3
    flag = 'db'; 
end


switch flag
    case 'db'
        flux = Pt + Gt - 10*log10(4*pi*R^2); 
    case 'lin'
        flux = (Pt*Gt)/(4*pi*R^2);
        
end
end

