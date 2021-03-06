// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _loc;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord2;
    vec4 _t1;
    vec2 _loc;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1.xy = vec2(_ps.x, 0.00000000E+00);
    _OUT._t1.zw = vec2(0.00000000E+00, _ps.y);
    _OUT._loc = _texCoord*TextureSize;
    _ret_0._position1 = _r0006;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._loc = _OUT._loc;
    gl_Position = _r0006;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2.xy = _OUT._loc;
    return;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2.xy = _ret_0._loc;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _loc;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec2 _loc;
};
vec4 _ret_0;
float _TMP26;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP22;
float _TMP21;
float _TMP20;
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP27;
float _TMP28;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
vec2 _val0036;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
float _TMP61;
float _TMP65;
float _TMP69;
float _TMP73;
float _TMP77;
float _TMP81;
float _TMP85;
float _TMP89;
float _TMP93;
float _TMP97;
float _TMP101;
float _TMP105;
float _TMP113;
vec2 _v0114;
float _TMP121;
vec2 _v0122;
float _a0130;
float _a0132;
float _a0134;
float _a0136;
float _a0138;
float _a0140;
float _a0142;
float _a0144;
float _a0146;
float _a0148;
float _a0150;
float _a0152;
float _a0154;
float _a0156;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    vec3 _B1;
    vec3 _C1;
    vec3 _D1;
    float _p1;
    float _q1;
    float _wd1;
    float _wd2;
    vec3 _color1;
    _TMP0 = fract(TEX2.xy);
    _pos = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _val0036 = vec2(float((_pos.x > 0.00000000E+00)), float((_pos.y > 0.00000000E+00)));
    _dir = _val0036 - vec2(float((_pos.x < 0.00000000E+00)), float((_pos.y < 0.00000000E+00)));
    _g1 = _dir*TEX1.xy;
    _g2 = _dir*TEX1.zw;
    _TMP1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0040 = TEX0.xy + _g1;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0040);
    _B1 = _TMP2.xyz;
    _c0042 = TEX0.xy + _g2;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0042);
    _C1 = _TMP3.xyz;
    _c0044 = TEX0.xy + _g1 + _g2;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0044);
    _D1 = _TMP4.xyz;
    _c0046 = TEX0.xy - _g2;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0046);
    _c0048 = (TEX0.xy + _g1) - _g2;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0048);
    _c0050 = TEX0.xy - _g1;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0050);
    _c0052 = (TEX0.xy - _g1) + _g2;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0052);
    _c0054 = TEX0.xy + 2.00000000E+00*_g1;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = TEX0.xy + 2.00000000E+00*_g1 + _g2;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = TEX0.xy + 2.00000000E+00*_g2;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0058);
    _c0060 = TEX0.xy + _g1 + 2.00000000E+00*_g2;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0060);
    _TMP61 = dot(_TMP1.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP65 = dot(_TMP2.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP69 = dot(_TMP3.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP73 = dot(_TMP4.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP77 = dot(_TMP5.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP81 = dot(_TMP6.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP85 = dot(_TMP7.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP89 = dot(_TMP8.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP93 = dot(_TMP9.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP97 = dot(_TMP10.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP101 = dot(_TMP11.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _TMP105 = dot(_TMP12.xyz, vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02));
    _p1 = abs(_pos.x);
    _q1 = abs(_pos.y);
    _v0114 = _g1 - _pos;
    _TMP27 = dot(_v0114, _v0114);
    _TMP28 = inversesqrt(_TMP27);
    _TMP113 = 1.00000000E+00/_TMP28;
    _v0122 = _g2 - _pos;
    _TMP27 = dot(_v0122, _v0122);
    _TMP28 = inversesqrt(_TMP27);
    _TMP121 = 1.00000000E+00/_TMP28;
    _a0130 = _TMP61 - _TMP73;
    _TMP13 = abs(_a0130);
    _a0132 = _TMP65 - _TMP77;
    _TMP14 = abs(_a0132);
    _a0134 = _TMP65 - _TMP97;
    _TMP15 = abs(_a0134);
    _a0136 = _TMP69 - _TMP85;
    _TMP16 = abs(_a0136);
    _a0138 = _TMP69 - _TMP105;
    _TMP17 = abs(_a0138);
    _a0140 = _TMP77 - _TMP97;
    _TMP18 = abs(_a0140);
    _a0142 = _TMP85 - _TMP105;
    _TMP19 = abs(_a0142);
    _wd1 = _TMP13 + _TMP14 + _TMP15 + _TMP16 + _TMP17 + -(_TMP18 + _TMP19);
    _a0144 = _TMP65 - _TMP69;
    _TMP20 = abs(_a0144);
    _a0146 = _TMP61 - _TMP81;
    _TMP21 = abs(_a0146);
    _a0148 = _TMP61 - _TMP89;
    _TMP22 = abs(_a0148);
    _a0150 = _TMP73 - _TMP93;
    _TMP23 = abs(_a0150);
    _a0152 = _TMP73 - _TMP101;
    _TMP24 = abs(_a0152);
    _a0154 = _TMP81 - _TMP89;
    _TMP25 = abs(_a0154);
    _a0156 = _TMP93 - _TMP101;
    _TMP26 = abs(_a0156);
    _wd2 = _TMP20 + _TMP21 + _TMP22 + _TMP23 + _TMP24 + -(_TMP25 + _TMP26);
    if (_wd1 < _wd2) { 
        if (_TMP113 < _TMP121) { 
            _C1 = (_TMP1.xyz + _TMP4.xyz) - _TMP2.xyz;
        } else {
            _B1 = (_TMP1.xyz + _TMP4.xyz) - _TMP3.xyz;
        } 
    } else {
        if (_wd1 > _wd2) { 
            _D1 = (_TMP2.xyz + _TMP3.xyz) - _TMP1.xyz;
        } 
    } 
    _color1 = ((1.00000000E+00 - _p1)*(1.00000000E+00 - _q1))*_TMP1.xyz + (_p1*(1.00000000E+00 - _q1))*_B1 + ((1.00000000E+00 - _p1)*_q1)*_C1 + (_p1*_q1)*_D1;
    _ret_0 = vec4(_color1.x, _color1.y, _color1.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
