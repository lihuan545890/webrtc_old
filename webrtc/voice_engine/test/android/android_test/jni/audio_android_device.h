/*****************************************************************************
 模块名      : android上音频采集播放接口
 文件名      : audio_android_device.h
 相关文件    : 
 文件实现功能: 
 作者        : lijing
 版本        : V0.9  Copyright(C) 2003-2011 KDC, All rights reserved.
 -----------------------------------------------------------------------------
 修改记录:
 日  期      版本        修改人      修改内容 
 ******************************************************************************/
#ifndef _AUDIO_ANDROID_DEVICE_H_
#define _AUDIO_ANDROID_DEVICE_H_

#ifdef __cplusplus
extern "C" {
#endif

class AudioAndroidDevice 
{
public:
	AudioAndroidDevice();
	~AudioAndroidDevice();
	
    int Init();
    int Terminate();
    int StartPlayout();
    int StartSend();
    int StopPlayout();
    int StopSend();
};

#ifdef __cplusplus
}
#endif
#endif

