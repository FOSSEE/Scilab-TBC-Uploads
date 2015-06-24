clear;
clc;
disp("--------------Example 28.5---------------")
//example explanation
printf("In this example, a manager station (SNMP client) uses the GetRequest message to retrieve the number of UDP datagrams that a\nrouter has received.\n\nThere is only one VarBind entity. The corresponding MIB variable related to this information is udpInDatagrams with the object identifier\n1.3.6.1.2.1.7.1.0. The manager wants to retrieve a value (not to store a value), so the value defines a null entity.\n\nThe VarBind list has only one VarBind. The variable is of type 06 and length 09.\nThe value is of type 05 and length 00. The whole VarBind is a sequence of length 0D (13).\nThe VarBind list is also a sequence of length 0F (15). The GetRequest PDU is of length 1D (29).\n\nThere are three OCTET STRINGs related to the security parameter, security model, and flags. Then we have two integers defining\nmaximum size (1024) and message ID (64). The header is a sequence of length 12, which we left blank for simplicity. There is one integer,\nversion (version 3). The whole message is a sequence of 52 bytes.\n\nThe figure shows the actual message sent by the manager station (client) to the agent (server).It shows the conceptual view of\nthe packet and the hierarchical nature of sequences.White boxes and colored boxes are used for the sequences and a gray one for the PDU.");
// display the figure
clf();
xname("--------------Example 28.5----------------");
xfrect(.04,.5,.5,.3);
a=gce();
a.background=color('gray')
xfrect(.06,.33,.4,.1);
a=gce();
a.background=color('white');
xfrect(.08,.3,.3,.06);
a=gce();
a.background=color('gray')
xrects([0 .02 .02 .04 .06 .08;1 .9 .55 .5 .33 .3;.7 .1 .6 .5 .4 .3;.9 .04 .4 .3 .1 .06]);
xset("font size",2.5)
xstring(.72,.55,"Whole message a sequence of 52 bytes");
xstring(0.01,.96,"02 01 03                          INTEGER, version");
xstring(.023,.88,"__  __   ...   __       Header, sequence of length 12, not shown");
xstring(0.01,.81,"02 01 40             Two");
xstring(0.01,.78,"02 02 04 00        INTEGERs");
xstring(0.01,.7,"04 01 00              Three");
xstring(0.01,.67,"04 00                    OCTET STRINGs");
xstring(0.01,.64,"04 00");
xstring(0.04,.51,"A0 1D");
xstring(0.042,.47,"02 04 00 01 06 11            Three");
xstring(0.042,.44,"02 01 00                              INTEGERs");
xstring(0.042,.41,"02 01 00");
xstring(0.082,.27,"06 09 01 03 06 01 02 07 01 00                                    VarBind");
xstring(0.082,.24,"05 00");
xstring(0.46,.29,"VarBind list");
xstring(0.54,.3,"length 29");
xstring(0.54,.33,"PDU of");
xstring(0.54,.36,"GetRequest");
xstring(0.63,.38,"Data, a");
xstring(0.63,.35,"sequence");
xstring(0.63,.32,"of 31");
xstring(0.63,.29,"bytes");
xpoly([.08 .1],[.84 .84]);
xpoly([.08 .1],[.78 .78]);
xpoly([.1 .1],[.78 .84]);
xpoly([.08 .1],[.72 .72]);
xpoly([.08 .1],[.64 .64]);
xpoly([.1 .1],[.64 .72]);
xset("font size",3.5);
xlfont("Monospaced",10,%t,%t);
xstring(0,1,"30 34");
xstring(0.01,.9,"30 0C");
xstring(0.01,.57,"30 1F");
xstring(0.06,.33,"30 0F");
xstring(0.08,.3,"30 0D");