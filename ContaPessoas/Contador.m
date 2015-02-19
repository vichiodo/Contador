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

//SINGLETON
static Contador *contador = nil;

+(Contador *) criarContador{
    if(contador == nil){
        contador = [[Contador alloc] init];
    }
    return contador;
}

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy = boy + 1;
}
- (void)maisUmaGata {
    girl++;
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

