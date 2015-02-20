//
//  Contador.m
//  ContaPessoas
//
//  Created by Vivian on 2/18/15.
//  Copyright (c) 2015 Vivian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    int boy;
    int girl;
    
}

@synthesize delegate;


//SINGLETON
static Contador *contador = nil;

+(Contador *) criarContador{
    if(contador == nil){
        contador = [[Contador alloc] init];
    }
    return contador;
}
//static dispatch_once_t oneToken;
//dispatch_once (&onceToken,
//  {
//      sharedContador = [[self alloc] init];
//  });
//  return sharedContador;
//}



-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy++;
    [delegate atualizar];
}
- (void)maisUmaGata {
    girl++;
    [delegate atualizar];
}


-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return boy+girl;
}

@end

