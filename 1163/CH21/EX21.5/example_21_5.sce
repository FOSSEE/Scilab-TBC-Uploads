clear;
clc;
disp("--------------Example 21.5---------------")
// display the example
printf("In this example, we trace a longer route, the route to xerox.com.\n\n");
printf("$ traceroute xerox.com\ntraceroute to xerox.com (13.1.64.93), 30 hops max, 38 byte packets\n1 Dcore.fbda.edu (153.18.31.254)  0.622 ms  0.891 ms  0.875 ms\n2 Ddmz.fbda.edu  (153.18.251.40)  2.132 ms  2.266 ms  2.094ms\n3 Cinic.fhda.edu (153.18.253.126) 2.110 ms  2.145 ms  1.763 ms\n4 cenic.net      (137.164.32.140) 3.069 ms  2.875 ms  2.930ms\n5 cenic.net      (137.164.22.31)  4.205 ms  4.870 ms  4.197 ms\n");
printf("     ...             ...              ...        ...       ...\n");
printf("14 snfc21.pbi.net  (151.164.191.49)  7.656 ms  7.129 ms  6.866ms\n15 sbcglobaLnet    (151.164.243.58)  7.844 ms  7.545 ms  7.353 ms\n16 pacbell.net     (209.232.138.114) 9.857 ms  9.535 ms  9.603 ms\n17 209.233.48.223  (209.233.48.223)  10.634 ms10.771 ms  10.592 ms\n18 alpha.Xerox.COM (13.1.64.93)      11.172 ms 11.048 ms 10.922ms\n\n");
printf("There are 17 hops between source and destination. Some round-trip times look unusual.\nIt could be that a router was too busy to process the packet immediately.")


