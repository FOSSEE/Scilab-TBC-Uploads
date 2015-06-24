
clc
//given that
// unit cell is BCC
printf("Example 3.2")
printf("\n\nPoint \t Fractional Length\t Point \n")
printf("Number \t x axix\t y axix\ z axix \t Coordinate\n")
n = 1 // serial number

for x = 0:1
    for y = 0:1
        for z = 0:1
             
            printf("%d\t   %d       %d      %d \t %d %d %d \n",n,x,y,z,x,y,z)
           n = n+1
        end
    end
end
x = 0.5// x coordinate for center point
y = 0.5// y coordinate for center point
z = 0.5// y coordinate for center point
printf("%d\t  %.1f     %0.1f    %.1f   %.1f %.1f %.1f \n",n,x,y,z,x,y,z)
// sequence of point number is changed to make problem programable 
