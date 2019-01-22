/*****************************************************************************
 ģ����      : android����Ƶ�ɼ����Žӿ�
 �ļ���      : audio_android_device.h
 ����ļ�    : 
 �ļ�ʵ�ֹ���: 
 ����        : lijing
 �汾        : V0.9  Copyright(C) 2003-2011 KDC, All rights reserved.
 -----------------------------------------------------------------------------
 �޸ļ�¼:
 ��  ��      �汾        �޸���      �޸����� 
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

