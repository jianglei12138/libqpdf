LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := qpdf

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/qpdf \
	$(LOCAL_PATH)/pcre/include 

LOCAL_SRC_FILES := \
	qpdf/BitStream.cc \
	qpdf/Pl_Concatenate.cc \
	qpdf/QPDFObjectHandle.cc \
	qpdf/QPDF_String.cc \
	qpdf/BitWriter.cc \
	qpdf/Pl_Count.cc \
	qpdf/QPDFTokenizer.cc \
	qpdf/QPDF_encryption.cc \
	qpdf/Buffer.cc \
	qpdf/Pl_Discard.cc \
	qpdf/QPDFWriter.cc \
	qpdf/QPDF_linearization.cc \
	qpdf/BufferInputSource.cc \
	qpdf/Pl_Flate.cc \
	qpdf/QPDFXRefEntry.cc \
	qpdf/QPDF_optimization.cc \
	qpdf/FileInputSource.cc \
	qpdf/Pl_LZWDecoder.cc \
	qpdf/QPDF_Array.cc \
	qpdf/QPDF_pages.cc \
	qpdf/InputSource.cc \
	qpdf/Pl_MD5.cc \
	qpdf/QPDF_Bool.cc \
	qpdf/QTC.cc \
	qpdf/InsecureRandomDataProvider.cc \
	qpdf/Pl_PNGFilter.cc \
	qpdf/QPDF_Dictionary.cc \
	qpdf/QUtil.cc \
	qpdf/MD5.cc \
	qpdf/Pl_QPDFTokenizer.cc \
	qpdf/QPDF_InlineImage.cc \
	qpdf/RC4.cc \
	qpdf/OffsetInputSource.cc \
	qpdf/Pl_RC4.cc \
	qpdf/QPDF_Integer.cc \
	qpdf/SecureRandomDataProvider.cc \
	qpdf/PCRE.cc \
	qpdf/Pl_SHA2.cc \
	qpdf/QPDF_Name.cc \
	qpdf/qpdf-c.cc \
	qpdf/Pipeline.cc \
	qpdf/Pl_StdioFile.cc \
	qpdf/QPDF_Null.cc \
	qpdf/rijndael.cc \
	qpdf/Pl_AES_PDF.cc \
	qpdf/QPDF.cc \
	qpdf/QPDF_Operator.cc \
	qpdf/sha2.c \
	qpdf/Pl_ASCII85Decoder.cc \
	qpdf/QPDFExc.cc \
	qpdf/QPDF_Real.cc \
	qpdf/sha2big.c \
	qpdf/Pl_ASCIIHexDecoder.cc \
	qpdf/QPDFObjGen.cc \
	qpdf/QPDF_Reserved.cc \
	qpdf/Pl_Buffer.cc \
	qpdf/QPDFObject.cc \
	qpdf/QPDF_Stream.cc 

LOCAL_LDLIBS := -lz
LOCAL_STATIC_LIBRARIES := pcre

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)

include $(LOCAL_PATH)/pcre/Android.mk
