/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020 Andrew D. Zonenberg                                                                               *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

#ifndef SCPIParser_h
#define SCPIParser_h

#include <stdint.h>
#include <peripheral/UART.h>
#include "LTC2664.h"

#define NUM_CHANNELS 4

class SCPIParser
{
public:
	SCPIParser(UART* uart, LTC2664* dac);

	/**
		@brief Single iteration of the main loop
	 */
	void Iteration();

protected:
	/**
		@brief Handles one or more bytes of input
	 */
	void OnInputReady();

	/**
		@brief Processes a line of user input
	 */
	void OnLineReady();

	void OnQuery(int channel, const char* field);
	void OnSet(int channel, const char* field, const char* args);

	//Keyboard event handlers
	void OnBackspace();
	void OnKey(char c);
	//void OnLeftArrow();
	//void OnRightArrow();

	void PrintFloat(float f);
	float ParseFloat(const char* str);

	enum state
	{
		STATE_EDIT,
		STATE_PARSE
	} m_state;

	UART* m_uart;

	//Input text entry
	uint32_t m_cursorPosition;
	char m_line[256];

protected:

	//Channel state
	//TODO: maybe this should become a separate class

	float m_offset[NUM_CHANNELS];
	LTC2664* m_dac;
};

#endif
