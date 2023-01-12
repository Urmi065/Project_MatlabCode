%%%%%%%%%%%%%%%%%%%%%%%%%%%%pentanol
start_1_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_1_img=[
   1.030475326203547E-10
   8.60303237933995E-12
   7.575732737575619E-13
   6.999917669258298E-14 
   6.758272539008988E-15
   6.834415994318981E-16
   6.88766337662259E-17
   1.3710001107018868E-18
   2.5416368294464812E-18
   1.0965770515862573E-19
   2.3370532899779113E-19 
   7.632265000292107E-18
];

for j=1:length(start_1_lam1)    
start_1_los(j,1)=8.686*2*pi*start_1_img(j,1)/start_1_lam1(j,1);
end
  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_los,x,'PCHIP');
plot(start_1_lam1,start_1_los,'.w',x,y,'cyan','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%propanol
start_5_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_5_img=[
   5.237272864573264E-10
   5.104436516743895E-11
   5.237020105855903E-12 
   5.631603381896125E-13
   6.326296961966245E-14 
   7.39038482204177E-15
   8.98425676797108E-16
   1.1020654254004602E-16
   1.2671650914344934E-17
   1.829598329667435E-18
   2.7478519552927605E-18
   8.74801954651089E-19
];

for j=1:length(start_5_lam1)    
start_5_los(j,1)=8.686*2*pi*start_5_img(j,1)/start_5_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_los,x,'PCHIP');
plot(start_5_lam1,start_5_los,'.w',x,y,'red','LineWidth',2.2);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ethanol
start_6_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_6_img=[
   1.100004653890249E-9
   1.1510474068421314E-10
   1.2665890078417435E-11
   1.4600250177660995E-12
   1.758213430279325E-13
   2.2029581863035803E-14
   2.8705468752335074E-15
   3.8767454784975407E-16
   5.1702648267921694E-17
   8.607330230617917E-18
   1.1738600150577901E-18
   1.574132282479145E-18 
];

for j=1:length(start_6_lam1)    
start_6_los(j,1)=8.686*2*pi*start_6_img(j,1)/start_6_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_los,x,'PCHIP');
plot(start_6_lam1,start_6_los,'.w',x,y,'green','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%HCN
start_7_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_7_img=[
  2.509255811166601E-8
  3.567242660845002E-9 
  5.299378639090471E-10
  8.220217785558508E-11
  1.3302302868799389E-11 
  2.241362844689392E-12 
  3.926863407935459E-13 
  7.147734697553758E-14
  1.3466069375170542E-14
  2.636312894790786E-15
  5.356063907466167E-16
  1.0604770603074131E-16  
];

for j=1:length(start_7_lam1)    
start_7_los(j,1)=8.686*2*pi*start_7_img(j,1)/start_7_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_los,x,'PCHIP');
plot(start_7_lam1,start_7_los,'.w',x,y,'LineWidth',2.2);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[4:2:20])
xlabel('Frequency (THz)','FontSize',18);
ylabel('Confinement Loss(dB/m)','FontSize',18);
ylim([0 0.5e-7]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(lgnd,'color','none');
grid on