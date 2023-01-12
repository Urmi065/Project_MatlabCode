clc
clear all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Propanol 1cm
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
   1.3906650464865245E-9
   1.6143945385103542E-10
   1.987282330759034E-11
   2.586072088176157E-12
   3.550652935623273E-13
   5.130974177363451E-14
   7.79453792062155E-15
   1.240585207186148E-15
   2.0728609876570972E-16
   2.5015198082676167E-17
   2.7462407981501085E-18
   2E-18
];

for j=1:length(start_1_lam1)    
start_1_los(j,1)=8.686*2*pi*start_1_img(j,1)/start_1_lam1(j,1);
end
  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_los,x,'spline');
plot(start_1_lam1,start_1_los,'.w',x,y,'cyan','LineWidth',2.3);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%propanol  2cm
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
  8.630227783766465E-10
  9.194660882340456E-11 
  1.0343007322917166E-11
  1.2236910560149008E-12
  1.5183891324665542E-13
  1.9705467729220696E-14
  2.6680433797296905E-15
  3.811713892053287E-16
  6.255303058836705E-17
  6.3552794027344985E-18 
  3.5991289857439146E-18
  4.13829962606027E-18
];

for j=1:length(start_6_lam1)    
start_6_los(j,1)=8.686*2*pi*start_6_img(j,1)/start_6_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_los,x,'c');
plot(start_6_lam1,start_6_los,'.w',x,y,'green','LineWidth',2.3);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ethanol 1cm
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
 2.8928456179483397E-9
 3.6039730008284615E-10
 4.7580104573870173E-11
 6.64070008201326E-12
 9.783486343156242E-13
 1.518293817647432E-13 
 2.479445782814741E-14
 4.260755166123829E-15 
 7.719053658228824E-16
 1.460273640184626E-16
 2.9392612039809276E-17
 4.592822713465028E-19
];

for j=1:length(start_7_lam1)    
start_7_los(j,1)=8.686*2*pi*start_7_img(j,1)/start_7_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_los,x,'c');
plot(start_7_lam1,start_7_los,'.w',x,y,'-.','LineWidth',2.3);
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ethanol  2cm
start_10_lam1=[
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
start_10_img=[
1.7947312751116204E-9
2.0500804684170277E-10 
2.4703127492386373E-11
3.1298540867888537E-12
4.159790803009796E-13
5.782458365180824E-14
8.391947054630778E-15
1.2687389616664166E-15
1.994909999531477E-16 
3.2534479733526197E-17 
9.102734239217229E-18
1.4792538895395145E-19
];

for j=1:length(start_10_lam1)    
start_10_los(j,1)=8.686*2*pi*start_10_img(j,1)/start_10_lam1(j,1);
end 
  x=1.1:0.0005:2.2;
  y=interp1(start_10_lam1,start_10_los,x,'spline');
plot(start_10_lam1,start_10_los,'.w',x,y,'-.r','LineWidth',2.3);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[4:2:20])
xlabel('Frequency (THz)','FontSize',18);
ylabel('Bending Loss(dB/m)','FontSize',18);
%ylim([0 5e-8]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Propanol(R=1cm)',' ','Propanol(R=2cm)',' ','Ethanol(R=1cm)',' ','Ethanol(R=2cm)');
set(lgnd,'color','none');
grid on