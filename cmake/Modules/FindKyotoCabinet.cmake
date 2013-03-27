
if (NOT KyotoCabinet_INCLUDE_DIR)
  find_path(KyotoCabinet_INCLUDE_DIR kclangc.h)
endif (NOT KyotoCabinet_INCLUDE_DIR)

if (NOT KyotoCabinet_LIBRARY)
  find_library(KyotoCabinet_LIBRARY NAMES kyotocabinet.lib libkyotocabinet.a kyotocabinet)
endif (NOT KyotoCabinet_LIBRARY)

if(KyotoCabinet_INCLUDE_DIR AND KyotoCabinet_LIBRARY)
  set(KyotoCabinet_FOUND TRUE)
endif(KyotoCabinet_INCLUDE_DIR AND KyotoCabinet_LIBRARY)

if(KyotoCabinet_FOUND)
  if(NOT KyotoCabinet_FIND_QUIETLY)
	message(STATUS "Found KyotoCabinet: ${KyotoCabinet_LIBRARY}")
  endif(NOT KyotoCabinet_FIND_QUIETLY)
else(KyotoCabinet_FOUND)
  if(KyotoCabinet_FIND_REQUIRED)
    message(FATAL_ERROR "Could not find kyotocabinet library.")
  endif(KyotoCabinet_FIND_REQUIRED)
endif(KyotoCabinet_FOUND)
