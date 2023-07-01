//
//  Shaders.metal
//  BlurBrowser
//
//  Created by Lou Zell on 6/30/23.
//

#include <metal_stdlib>

using namespace metal;

[[ stitchable ]] float2 sponge(float2 position, float time) {
    return float2(position.x + 30 * sin(time), position.y);
}
