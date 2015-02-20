//
//  Contador.h
//  ContaPessoas
//
//  Created by Vivian on 2/18/15.
//  Copyright (c) 2015 Vivian. All rights reserved.
//
#import "MostradorDelegate.h"

@interface Contador : NSObject


@property id<MostradorDelegate> delegate;



+(Contador *) criarContador;
- (void)maisUmCueca;
- (void)maisUmaGata;


-(int)getBoys;
-(int)getGirls;
-(int)getTotal;

@end

