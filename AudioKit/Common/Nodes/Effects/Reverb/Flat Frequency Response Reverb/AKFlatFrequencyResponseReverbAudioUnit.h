//
//  AKFlatFrequencyResponseReverbAudioUnit.h
//  AudioKit
//
//  Created by Aurelius Prochazka, revision history on Github.
//  Copyright (c) 2016 Aurelius Prochazka. All rights reserved.
//

#pragma once
#import "AKAudioUnit.h"

@interface AKFlatFrequencyResponseReverbAudioUnit : AKAudioUnit
@property (nonatomic) float reverbDuration;
- (void)setLoopDuration:(float)duration;
@end

