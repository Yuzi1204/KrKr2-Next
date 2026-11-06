// live2d_stub.cpp
// 上游仓库未附带 Live2D Cubism SDK（闭源，不可再分发），因此 krkrlive2d.cpp 被排除出编译。
// 但 krkrgles.cpp 等模块仍引用它导出的符号，这里提供同名空实现，保证链接通过。
// 效果：Live2D 模型功能不可用（本项目用不到），其他渲染路径不受影响。

#include <GLES2/gl2.h>

struct Live2DRenderTarget {
    GLuint  fbo    = 0;
    GLsizei width  = 0;
    GLsizei height = 0;
};

Live2DRenderTarget g_live2dRenderTarget;

extern "C" void TVPRegisterKrkrLive2DPluginAnchor() {}