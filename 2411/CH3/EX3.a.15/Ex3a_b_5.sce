
// Scilab Code Ex3a.b.5: Page-141 (2008)
clc; clear;
function m = check_motion_type(k, omega0)
    if k > omega0 then
        m = 'aperiodic';
    else if  k == omega0 then
            m = 'criticallydamped';
        else if  k < omega0 then
                m = 'oscillatory';
            end
        end
    end
endfunction
m = 10;    // Mass of the oscillating body, g
r = 2;    // Resisting force, dyne-sec/cm
s = 5;    // Restoring force, dyne/cm
k = r/(2*m);    // Resisting force, nepers/sec
// As omega0^2 = s/m, solving for omega0
omega0 = sqrt(s/m);    // Angular frequency, rad/s
motion = check_motion_type(k, omega0);    // Check for the type of motion
r = 2*sqrt(m*s);    // Resistive force constant for critical damping, dyne-sec/cm
printf("\nThe motion is %s in nature", motion);
printf("\nThe resistive force constant for critical damping = %4.1f dyne-sec/cm", r);

// Result
// The motion is oscillatory in nature
// The resistive force constant for critical damping = 14.1 dyne-sec/cm 
