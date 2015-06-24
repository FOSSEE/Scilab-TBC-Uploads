// Scilab Code Ex3a.b.2: Page-139 (2008)
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
m = 10;    // Mass of the body, g
s = 10;    // Restoring force, dyne/cm
r = 2;    // Resistive force constant, dyne.sec/cm
k = r/(2*m);    // Resisting force, nepers/sec
// As omega0^2 = s/m, solving for omega0
omega0 = sqrt(s/m);    // Angular frequency, rad/s
motion = check_motion_type(k, omega0);    // Check for the type of motion
r_new = 2*sqrt(m*s);    // Resistive force constant, dyne-sec/cm
m = r^2/(4*s);    // Mass for which the given forces makes the motion critically damped, g
printf("\nThe motion is %s in nature", motion);
printf("\nThe resistive force constant = %d dyne-sec/cm", r_new);
printf("\nThe mass for which the given forces makes the motion critically damped = %3.1f g", m);

// Result
// The motion is oscillatory in nature
// The resistive force constant = 20 dyne-sec/cm
// The mass for which the given forces makes the motion critically damped = 0.1 g 