//
//  ViewController.m
//  2048d
//
//  Created by apple on 5/25/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *control;
    UIView *demo1;
    UIView *demo2;
    UIView *demo3;
    UIView *demo4;
    UIView *demo5;
    UIView *demo6;
    UIView *demo7;
    UIView *demo8;
    UIView *demo9;
    UIView *demo10;
    UIView *demo11;
    UIView *demo12;
    UIView *demo13;
    UIView *demo14;
    UIView *demo15;
    UIView *demo16;
    
    UIView *demoa;
    UIView *demob;
    UIView *democ;
    UIView *demod;
    UIView *demoe;
    UIView *demof;
    
    
    UILabel *labela;
    UILabel *labelb;
    UILabel *labelc;
    UILabel *labeld;
    UILabel *labele;
    UILabel *labelf;
    UILabel *labelg;
    UILabel *labelh;
    UILabel *labeli;
    
    UILabel *label1;
    UILabel *label2;
    UILabel *label3;
    UILabel *label4;
    UILabel *label5;
    UILabel *label6;
    UILabel *label7;
    UILabel *label8;
    UILabel *label9;
    UILabel *label10;
    UILabel *label11;
    UILabel *label12;
    UILabel *label13;
    UILabel *label14;
    UILabel *label15;
    UILabel *label16;
    
    UISwipeGestureRecognizer * up;
    UISwipeGestureRecognizer * down;
    UISwipeGestureRecognizer * left;
    UISwipeGestureRecognizer * right;
    
    NSString *a[4][4],*b[4][4];
    
    NSString *c[4],*d;
    
    int p,q,m,n,J,w,r,sum;
    
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    control=[[UIView alloc]init];
    [self.view addSubview:control];
    control.backgroundColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.3];
    control.frame=CGRectMake(0, self.view.frame.size.height/3.f, self.view.frame.size.width, self.view.frame.size.width);
    control.layer.cornerRadius=control.frame.size.width/50.f;
    
    
    demo1=[[UIView alloc]init];
    [self.view addSubview:demo1];
    demo1.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo1.frame=CGRectMake(self.view.frame.size.width/25, self.view.frame.size.height/3.f+self.view.frame.size.width/25, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo1.layer.cornerRadius=demo1.frame.size.width/10.f;
    
    label1=[[UILabel alloc]init];
    [self.view addSubview:label1];
    label1.frame=CGRectMake(self.view.frame.size.width/25, self.view.frame.size.height/3.f+self.view.frame.size.width/25, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label1.backgroundColor=[UIColor clearColor];
    label1.textAlignment=1;
    
    
    
    demo2=[[UIView alloc]init];
    [self.view addSubview:demo2];
    demo2.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo2.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo2.layer.cornerRadius=demo2.frame.size.width/10.f;
    
    label2=[[UILabel alloc]init];
    [self.view addSubview:label2];
    label2.backgroundColor=[UIColor clearColor];
    label2.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label2.textAlignment=1;
    
    
    demo3=[[UIView alloc]init];
    [self.view addSubview:demo3];
    demo3.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo3.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo3.layer.cornerRadius=demo3.frame.size.width/10.f;
    
    label3=[[UILabel alloc]init];
    [self.view addSubview:label3];
    label3.backgroundColor=[UIColor clearColor];
    label3.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label3.textAlignment=1;
    
    
    demo4=[[UIView alloc]init];
    [self.view addSubview:demo4];
    demo4.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo4.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo4.layer.cornerRadius=demo4.frame.size.width/10.f;
    
    label4=[[UILabel alloc]init];
    [self.view addSubview:label4];
    label4.backgroundColor=[UIColor clearColor];
    label4.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label4.textAlignment=1;
    
    
    demo5=[[UIView alloc]init];
    [self.view addSubview:demo5];
    demo5.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo5.frame=CGRectMake(self.view.frame.size.width/25, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo5.layer.cornerRadius=demo5.frame.size.width/10.f;
    
    label5=[[UILabel alloc]init];
    [self.view addSubview:label5];
    label5.backgroundColor=[UIColor clearColor];
    label5.frame=CGRectMake(self.view.frame.size.width/25, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label5.textAlignment=1;
    
    demo6=[[UIView alloc]init];
    [self.view addSubview:demo6];
    demo6.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo6.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f,self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo6.layer.cornerRadius=demo6.frame.size.width/10.f;
    
    label6=[[UILabel alloc]init];
    [self.view addSubview:label6];
    label6.backgroundColor=[UIColor clearColor];
    label6.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f,self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label6.textAlignment=1;
    
    demo7=[[UIView alloc]init];
    [self.view addSubview:demo7];
    demo7.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo7.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5.f*2, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo7.layer.cornerRadius=demo7.frame.size.width/10.f;
    
    label7=[[UILabel alloc]init];
    [self.view addSubview:label7];
    label7.backgroundColor=[UIColor clearColor];
    label7.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5.f*2, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label7.textAlignment=1;
    
    
    
    demo8=[[UIView alloc]init];
    [self.view addSubview:demo8];
    demo8.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo8.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5.f*3, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo8.layer.cornerRadius=demo8.frame.size.width/10.f;
    
    label8=[[UILabel alloc]init];
    [self.view addSubview:label8];
    label8.backgroundColor=[UIColor clearColor];
    label8.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5.f*3, self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*2+self.view.frame.size.width/5.f, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label8.textAlignment=1;
    
    
    demo9=[[UIView alloc]init];
    [self.view addSubview:demo9];
    demo9.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo9.frame=CGRectMake(self.view.frame.size.width/25,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo9.layer.cornerRadius=demo9.frame.size.width/10.f;
    
    label9=[[UILabel alloc]init];
    [self.view addSubview:label9];
    label9.backgroundColor=[UIColor clearColor];
    label9.frame=CGRectMake(self.view.frame.size.width/25,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label9.textAlignment=1;
    
    demo13=[[UIView alloc]init];
    [self.view addSubview:demo13];
    demo13.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo13.frame=CGRectMake(self.view.frame.size.width/25,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo13.layer.cornerRadius=demo13.frame.size.width/10.f;
    
    label13=[[UILabel alloc]init];
    [self.view addSubview:label13];
    label13.backgroundColor=[UIColor clearColor];
    label13.frame=CGRectMake(self.view.frame.size.width/25,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label13.textAlignment=1;
    
    demo10=[[UIView alloc]init];
    [self.view addSubview:demo10];
    demo10.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo10.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo10.layer.cornerRadius=demo10.frame.size.width/10.f;
    
    label10=[[UILabel alloc]init];
    [self.view addSubview:label10];
    label10.backgroundColor=[UIColor clearColor];
    label10.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label10.textAlignment=1;
    
    
    demo14=[[UIView alloc]init];
    [self.view addSubview:demo14];
    demo14.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo14.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo14.layer.cornerRadius=demo14.frame.size.width/10.f;
    
    label14=[[UILabel alloc]init];
    [self.view addSubview:label14];
    label14.backgroundColor=[UIColor clearColor];
    label14.frame=CGRectMake(self.view.frame.size.width/25*2+self.view.frame.size.width/5.f,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label14.textAlignment=1;
    
    
    demo11=[[UIView alloc]init];
    [self.view addSubview:demo11];
    demo11.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo11.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo11.layer.cornerRadius=demo11.frame.size.width/10.f;
    
    label11=[[UILabel alloc]init];
    [self.view addSubview:label11];
    label11.backgroundColor=[UIColor clearColor];
    label11.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label11.textAlignment=1;
    
    demo15=[[UIView alloc]init];
    [self.view addSubview:demo15];
    demo15.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo15.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo15.layer.cornerRadius=demo15.frame.size.width/10.f;
    
    label15=[[UILabel alloc]init];
    [self.view addSubview:label15];
    label15.backgroundColor=[UIColor clearColor];
    label15.frame=CGRectMake(self.view.frame.size.width/25*3+self.view.frame.size.width/5*2,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label15.textAlignment=1;
    
    
    demo12=[[UIView alloc]init];
    [self.view addSubview:demo12];
    demo12.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo12.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo12.layer.cornerRadius=demo12.frame.size.width/10.f;
    
    label12=[[UILabel alloc]init];
    [self.view addSubview:label12];
    label12.backgroundColor=[UIColor clearColor];
    label12.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*3+self.view.frame.size.width/5.f*2, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label12.textAlignment=1;
    
    
    demo16=[[UIView alloc]init];
    [self.view addSubview:demo16];
    demo16.backgroundColor=[[UIColor alloc]initWithWhite:0.8 alpha:0.9];
    demo16.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    demo16.layer.cornerRadius=demo16.frame.size.width/10.f;
    
    label16=[[UILabel alloc]init];
    [self.view addSubview:label16];
    label16.backgroundColor=[UIColor clearColor];
    label16.frame=CGRectMake(self.view.frame.size.width/25*4+self.view.frame.size.width/5*3,self.view.frame.size.height/3.f+self.view.frame.size.width/25.f*4+self.view.frame.size.width/5.f*3, self.view.frame.size.width/5.f, self.view.frame.size.width/5.f);
    label16.textAlignment=1;
    
    
    demoa=[[UIView alloc]init];
    [self.view addSubview:demoa];
    demoa.backgroundColor=[UIColor yellowColor];
    demoa.frame=CGRectMake(10, 20,140,140);
    demoa.layer.cornerRadius=demoa.frame.size.width/10.f;
    
    labela=[[UILabel alloc]init];
    [self.view addSubview:labela];
    labela.frame=CGRectMake(10, 20,140,140);
    labela.backgroundColor=[UIColor clearColor];
    labela.text=@"2048";
    labela.textAlignment=1;
    labela.textColor=[UIColor blackColor];
    
    demob=[[UIView alloc]init];
    [self.view addSubview:demob];
    demob.backgroundColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.3];
    demob.frame=CGRectMake(160, 20,90,80);
    demob.layer.cornerRadius=demob.frame.size.width/10.f;
    
    labelb=[[UILabel alloc]init];
    [self.view addSubview:labelb];
    labelb.frame=CGRectMake(160, 20,90,40);
    labelb.backgroundColor=[UIColor clearColor];
    labelb.text=@"分数";
    labelb.textAlignment=1;
    labelb.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.8];
    
    labelh=[[UILabel alloc]init];
    [self.view addSubview:labelh];
    labelh.frame=CGRectMake(160, 50,90,40);
    labelh.backgroundColor=[UIColor clearColor];
    labelh.text=@"0";
    labelh.textAlignment=1;
    labelh.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.8];
    
    democ=[[UIView alloc]init];
    [self.view addSubview:democ];
    democ.backgroundColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.3];
    democ.frame=CGRectMake(260, 20,100,80);
    democ.layer.cornerRadius=democ.frame.size.width/10.f;
    
    labelc=[[UILabel alloc]init];
    [self.view addSubview:labelc];
    labelc.frame=CGRectMake(260, 20,100,40);
    labelc.backgroundColor=[UIColor clearColor];
    labelc.text=@"历史最高";
    labelc.textAlignment=1;
    labelc.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.8];
    
    labeli=[[UILabel alloc]init];
    [self.view addSubview:labeli];
    labeli.frame=CGRectMake(260, 50,100,40);
    labeli.backgroundColor=[UIColor clearColor];
    labeli.text=@"0000000";
    labeli.textAlignment=1;
    labeli.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.8];
    
    
    demod=[[UIView alloc]init];
    [self.view addSubview:demod];
    demod.backgroundColor=[[UIColor alloc]initWithRed:0.9 green:0 blue:0 alpha:0.3];
    demod.frame=CGRectMake(160,110,90,50);
    demod.layer.cornerRadius=demod.frame.size.width/10.f;
    
    labeld=[[UILabel alloc]init];
    [self.view addSubview:labeld];
    labeld.frame=CGRectMake(160,110,90,50);
    labeld.backgroundColor=[UIColor clearColor];
    labeld.text=@"菜单";
    labeld.textAlignment=1;
    labeld.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.9];
    
    
    demof=[[UIView alloc]init];
    [self.view addSubview:demof];
    demof.backgroundColor=[[UIColor alloc]initWithRed:0.9 green:0 blue:0 alpha:0.3];
    demof.frame=CGRectMake(260,110,100,50);
    demof.layer.cornerRadius=demof.frame.size.width/10.f;
    
    labele=[[UILabel alloc]init];
    [self.view addSubview:labele];
    labele.frame=CGRectMake(260,110,100,50);
    labele.backgroundColor=[UIColor clearColor];
    labele.text=@"排行榜";
    labele.textAlignment=1;
    labele.textColor=[[UIColor alloc]initWithRed:0.8 green:0.6 blue:0.3 alpha:0.9];
    
    up=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp)];
    up.direction=UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:up];
    
    down=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown)];
    down.direction=UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:down];
    
    left=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeLeft)];
    left.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:left];
    
    right=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeRight)];
    right.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:right];
    
    
    while(1)
    {   int i= arc4random() % (3+1);
        int j= arc4random() % (3+1);
        int s= arc4random() % (3+1);
        int t= arc4random() % (3+1);
        int x= arc4random() % (4+1);
        int y= arc4random() % (4+1);
        if (x<=3)
        {
            x=2;
        }
        if (y<=3)
        {
            y=2;
        }
        if(i!=s&&j!=t)
        {
            NSString *X = [NSString stringWithFormat:@"%d",x];
            NSString *Y = [NSString stringWithFormat:@"%d",y];
            a[i][j]=(@"%@",X);
            a[s][t]=(@"%@",Y);
            break;
        }
        
    }
    
    
    label1.text=a[0][0];
    label2.text=a[0][1];
    label3.text=a[0][2];
    label4.text=a[0][3];
    label5.text=a[1][0];
    label6.text=a[1][1];
    label7.text=a[1][2];
    label8.text=a[1][3];
    label9.text=a[2][0];
    label10.text=a[2][1];
    label11.text=a[2][2];
    label12.text=a[2][3];
    label13.text=a[3][0];
    label14.text=a[3][1];
    label15.text=a[3][2];
    label16.text=a[3][3];
    
    b[0][0]=label1.text;
    b[0][1]=label2.text;
    b[0][2]=label3.text;
    b[0][3]=label4.text;
    b[1][0]=label5.text;
    b[1][1]=label6.text;
    b[1][2]=label7.text;
    b[1][3]=label8.text;
    b[2][0]=label9.text;
    b[2][1]=label10.text;
    b[2][2]=label11.text;
    b[2][3]=label12.text;
    b[3][0]=label13.text;
    b[3][1]=label14.text;
    b[3][2]=label15.text;
    b[3][3]=label16.text;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)move
{
    for (m=0;m<=3;m++)
    {
        for (p=0;p<=3;p++)
        {
            if (c[p]==nil)
            {
                for (n=p;n<=2;n++)
                {
                    c[n]=c[n+1];
                }
                c[3]=nil;
            }
        }
    }
}
-(void)puttext
{
    label1.text=b[0][0];
    label2.text=b[0][1];
    label3.text=b[0][2];
    label4.text=b[0][3];
    label5.text=b[1][0];
    label6.text=b[1][1];
    label7.text=b[1][2];
    label8.text=b[1][3];
    label9.text=b[2][0];
    label10.text=b[2][1];
    label11.text=b[2][2];
    label12.text=b[2][3];
    label13.text=b[3][0];
    label14.text=b[3][1];
    label15.text=b[3][2];
    label16.text=b[3][3];
}


-(void)rand
{
    while(1)
    {   int i= arc4random() % (3+1);
        int j= arc4random() % (3+1);
        int x= arc4random() % (4+1);
        if (x<=3)
        {
            x=2;
        }
        if(b[i][j]==nil)
        {
            NSString *X = [NSString stringWithFormat:@"%d",x];
            b[i][j]=(@"%@",X);
            break;
        }
    }
}

-(void)judge
{
    if (label1.text !=b[0][0]||label2.text!=b[0][1]||label3.text!=b[0][2]||label4.text!=b[0][3]||label5.text!=b[1][0]||label6.text!=b[1][1]||label7.text!=b[1][2]||label8.text!=b[1][3]||label9.text!=b[2][0]||label10.text!=b[2][1]||label11.text!=b[2][2]||label12.text!=b[2][3]||label13.text!=b[3][0]||label14.text!=b[3][1]||label15.text!=b[3][2]||label16.text!=b[3][3])
    {
        J=1;
    }
    else J=0;
}


-(void)combine
{
    
    for (m=0;m<=2;m++)
    {
        if ([c[m] isEqual:c[m+1]])
        {
            d=c[m];
            int e=[d intValue];
            sum=sum+e*2;
            labelh.text=[NSString stringWithFormat:@"%d",sum];
            c[m]=[NSString stringWithFormat:@"%d",e*2];
            if ([c[m] isEqual:@"0"])
            {
                c[m]=nil;
            }
            for (w=m;w<=1;w++)
            {
                c[w+1]=c[w+2];
            }
            c[3]=nil;
        }
    }
}



-(void)swipeUp
{
    for (q=0;q<=3;q++)
    {
        
        for (p=0;p<=3;p++)
        {
            c[p]=b[p][q];
        }

        [self move];
        [self combine];
        
        for (p=0;p<=3;p++)
        {
            b[p][q]=c[p];
        }
    }
    [self judge];
    if (J==1)
    {
        [self rand];
    }
    [self puttext];
}
-(void)swipeDown
{
    
    for (q=0;q<=3;q++)
    {
        for (p=3,r=0;p>=0;p--,r++)
        {
            c[r]=b[p][q];
        }
        [self move];
        [self combine];
        
        for (r=0,p=3;p>=0;p--,r++)
        {
            b[p][q]=c[r];
        }
    }
    [self judge];
    if (J==1)
    {
        [self rand];
    }
    [self puttext];
    
}
-(void)swipeLeft
{
    
    for (q=0;q<=3;q++)
    {
        for (p=0;p<=3;p++)
        {
            c[p]=b[q][p];
        }
        [self move];
        [self combine];
        
        for (p=0;p<=3;p++)
        {
            b[q][p]=c[p];
        }
    }
    [self judge];
    if (J==1)
    {
        [self rand];
    }
    [self puttext];
    
}
-(void)swipeRight
{
    for (q=0;q<=3;q++)
    {
        for (r=0,p=3;p>=0;p--,r++)
        {
            c[r]=b[q][p];
        }
        [self move];
        [self combine];
        
        for (r=0,p=3;p>=0;p--,r++)
        {
            b[q][p]=c[r];
        }
    }
    if (J==1)
    {
        [self rand];
    }
    [self puttext];
    
}


@end
