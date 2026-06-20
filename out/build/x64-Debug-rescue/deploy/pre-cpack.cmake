# SPDX-FileCopyrightText: (C) 2025 Chris Rizzitello <sithlord48@gmail.com>
# SPDX-License-Identifier: MIT

if(CPACK_GENERATOR MATCHES 7Z|ZIP)
  string(REPLACE " " "*" _TEMP_LIST "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/msvcp140.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/msvcp140_1.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/msvcp140_2.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/msvcp140_atomic_wait.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/msvcp140_codecvt_ids.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/vcruntime140_1.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/vcruntime140.dll;C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.44.35112/x64/Microsoft.VC143.CRT/concrt140.dll")
  set(${PORTABLE_LIBS} "")
  foreach(ITEM ${_TEMP_LIST})
    string(REPLACE "*" " " _ITEM ${ITEM})
    file(COPY ${_ITEM} DESTINATION ${CPACK_TEMPORARY_INSTALL_DIRECTORY})
  endforeach()
  file(WRITE ${CPACK_TEMPORARY_INSTALL_DIRECTORY}/settings/Deskflow.conf " ")
  file(REMOVE ${CPACK_TEMPORARY_INSTALL_DIRECTORY}/deskflow-daemon.exe)
  file(WRITE ${CPACK_TEMPORARY_INSTALL_DIRECTORY}/README.txt
" Portable Deskflow: 1.26.0.9999

  The portable version must have the settings/Deskflow.conf file to save settings, or it will try to use the system settings location.
  The portable version does not include the daemon, so the client will not work at UAC prompts or the login screen.
")
endif()
