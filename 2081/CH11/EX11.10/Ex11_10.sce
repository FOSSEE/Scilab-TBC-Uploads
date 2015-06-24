BWupl=890
BWupu=915
BWdwl=935
BWdwu=960
BWup=BWupu-BWupl//bandwidth uplink
BWdw=BWdwu-BWdwl//bandwidth downlink
if BWup==BWdw then
    disp(BWup,'in either case the maximum frequency hop or change from one frame to the next in MHz')

else
    disp(BWup,'in uplink case the maximum frequency hop or change from one frame to the next in MHz')
    disp(BWdw,'in downlink case the maximum frequency hop or change from one frame to the next in MHz')
end
mecfup=BWupl+(BWupu-BWupl)/2//uplink transmission
mfhup=BWup/mecfup
disp(mfhup*100,'maximum frequency hop for uplink transmission in %')

mecfdw=BWdwl+(BWdwu-BWdwl)/2//downlink transmission
mfhdw=BWdw/mecfdw
disp(mfhdw*100,'maximum frequency hop for downlink transmission in %')
