[Defines]
  PLATFORM_NAME                  = UefiTestingPkg
  PLATFORM_GUID                  = 6F70F908-33D1-466D-9254-1044ED3D8FF7
  PLATFORM_VERSION               = 0.10
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/UefiTestingPkg
  SUPPORTED_ARCHITECTURES        = X64
  BUILD_TARGETS                  = DEBUG|RELEASE|NOOPT
  SKUID_IDENTIFIER               = DEFAULT

[LibraryClasses.common]  
  BaseLib                        |MdePkg/Library/BaseLib/BaseLib.inf
  DebugLib                       |MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort.inf
  DebugLib                       |AdvLoggerPkg/Library/BaseDebugLibAdvancedLogger/BaseDebugLibAdvancedLogger.inf
  DevicePathLib                  |MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  FileHandleLib                  |MdePkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  UefiBootManagerLib             |MdeModulePkg/Library/UefiBootManagerLib/UefiBootManagerLib.inf
  AdvancedLoggerLib              |AdvLoggerPkg/Library/AdvancedLoggerLib/Dxe/AdvancedLoggerLib.inf
  AssertLib                      |AdvLoggerPkg/Library/AssertLib/AssertLib.inf
  ReportStatusCodeLib            |MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
#Services tables/Entry points
  UefiBootServicesTableLib       |MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib    |MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  UefiDriverEntryPoint           |MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  UefiApplicationEntryPoint      |MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  DxeServicesLib                 |MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  DxeServicesTableLib            |MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf
  UefiHiiServicesLib             |MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  RegisterFilterLib              |MdePkg/Library/RegisterFilterLibNull/RegisterFilterLibNull.inf

#NULLibraries
  TimerLib                       |MdePkg/Library/BaseTimerLibNullTemplate/BaseTimerLibNullTemplate.inf
  HwResetSystemLib               |MdeModulePkg/Library/BaseResetSystemLibNull/BaseResetSystemLibNull.inf
  MemoryTypeInformationChangeLib |MdeModulePkg/Library/MemoryTypeInformationChangeLibNull/MemoryTypeInformationChangeLibNull.inf
  PrintLib                       |MdePkg/Library/BasePrintLib/BasePrintLib.inf
  UefiLib                        |MdePkg/Library/UefiLib/UefiLib.inf
  HiiLib                         |MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  PcdLib                         |MdePkg/Library/DxePcdLib/DxePcdLib.inf

  #CryptoLibraries  
  BaseCryptLib     |CryptoPkg/Library/BaseCryptLib/BaseCryptLib.inf
  OpensslLib       |CryptoPkg/Library/OpensslLib/OpensslLib.inf
  IntrinsicLib     |CryptoPkg/Library/IntrinsicLib/IntrinsicLib.inf
  RngLib           |MdePkg/Library/BaseRngLib/BaseRngLib.inf
  StackCheckLib    |MdePkg/Library/StackCheckLib/StackCheckLib.inf
  StackCheckFailureHookLib |MdePkg/Library/StackCheckFailureHookLibNull/StackCheckFailureHookLibNull.inf
#Unit Test Libs
  UnitTestLib                    |UnitTestFrameworkPkg/Library/UnitTestLib/UnitTestLib.inf
  UnitTestBootLib                |UnitTestFrameworkPkg/Library/UnitTestBootLibNull/UnitTestBootLibNull.inf
  UnitTestPersistenceLib         |UnitTestFrameworkPkg/Library/UnitTestPersistenceLibSimpleFileSystem/UnitTestPersistenceLibSimpleFileSystem.inf
  UnitTestResultReportLib        |XmlSupportPkg/Library/UnitTestResultReportJUnitFormatLib/UnitTestResultReportLib.inf

#XML libraries
  XmlTreeQueryLib                |XmlSupportPkg/Library/XmlTreeQueryLib/XmlTreeQueryLib.inf
  XmlTreeLib                     |XmlSupportPkg/Library/XmlTreeLib/XmlTreeLib.inf

#Shell Libraries
  ShellLib                       |ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  ShellCommandLib                |ShellPkg/Library/UefiShellCommandLib/UefiShellCommandLib.inf
  ShellCEntryLib                 |ShellPkg/Library/UefiShellCEntryLib/UefiShellCEntryLib.inf
  HandleParsingLib               |ShellPkg/Library/UefiHandleParsingLib/UefiHandleParsingLib.inf
  BcfgCommandLib                 |ShellPkg/Library/UefiShellBcfgCommandLib/UefiShellBcfgCommandLib.inf

  SortLib                        |MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf
  SafeIntLib                     |MdePkg/Library/BaseSafeIntLib/BaseSafeIntLib.inf
  HobLib                         |MdePkg/Library/DxeHobLib/DxeHobLib.inf

#Debug Libraries
  PerformanceLib                 |MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull.inf
  DebugPrintErrorLevelLib        |MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf

#PeCoff Libraries
  #PeCoffLib                     |MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  PeCoffGetEntryPointLib         |MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  
  

#Variable Libraries
  VariablePolicyLib              |MdeModulePkg/Library/VariablePolicyLib/VariablePolicyLib.inf
  VariablePolicyHelperLib        |MdeModulePkg/Library/VariablePolicyHelperLib/VariablePolicyHelperLib.inf
  AuthVariableLib                |SecurityPkg/Library/AuthVariableLib/AuthVariableLib.inf
  VarCheckLib                    |MdeModulePkg/Library/VarCheckLib/VarCheckLib.inf
  VariableFlashInfoLib           |MdeModulePkg/Library/BaseVariableFlashInfoLib/BaseVariableFlashInfoLib.inf

  
  # IO Libraries
  IoLib                          |MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicSev.inf
  SerialPortLib                  |PcAtChipsetPkg/Library/SerialIoLib/SerialIoLib.inf
  TdxLib                         |MdePkg/Library/TdxLib/TdxLib.inf
  CcProbeLib                     |MdePkg/Library/CcProbeLibNull/CcProbeLibNull.inf

  # TPM Libraries
  OemTpm2InitLib                 |SecurityPkg/Library/OemTpm2InitLibNull/OemTpm2InitLib.inf
  Tpm2DebugLib                   |SecurityPkg/Library/Tpm2DebugLib/Tpm2DebugLibNull.inf
  Tpm12CommandLib                |SecurityPkg/Library/Tpm12CommandLib/Tpm12CommandLib.inf
  Tpm2CommandLib                 |SecurityPkg/Library/Tpm2CommandLib/Tpm2CommandLib.inf
  Tpm2DeviceLib                  |SecurityPkg/Library/Tpm2DeviceLibTcg2/Tpm2DeviceLibTcg2.inf
  Tcg2PpVendorLib                |SecurityPkg/Library/Tcg2PpVendorLibNull/Tcg2PpVendorLibNull.inf
  TpmMeasurementLib              |MdeModulePkg/Library/TpmMeasurementLibNull/TpmMeasurementLibNull.inf
 
!if $(TPM_ENABLE) == TRUE
  TpmMeasurementLib              |SecurityPkg/Library/DxeTpmMeasurementLib/DxeTpmMeasurementLib.inf
  Tpm2DebugLib                   |SecurityPkg/Library/Tpm2DebugLib/Tpm2DebugLibSimple.inf
!endif
 ExceptionPersistenceLib         |MsCorePkg/Library/ExceptionPersistenceLibCmos/ExceptionPersistenceLibCmos.inf

#PCI libraries 
  PciCf8Lib                      |MdePkg/Library/BasePciCf8Lib/BasePciCf8Lib.inf
  PciExpressLib                  |MdePkg/Library/BasePciExpressLib/BasePciExpressLib.inf
  PciLib                         |MdePkg/Library/BasePciLibCf8/BasePciLibCf8.inf
  PciSegmentLib                  |MdePkg/Library/BasePciSegmentLibPci/BasePciSegmentLibPci.inf

#Memory Libraries
  BaseMemoryLib                  |MdePkg/Library/BaseMemoryLibRepStr/BaseMemoryLibRepStr.inf
  MemoryTypeInfoSecVarCheckLib   |MdeModulePkg/Library/MemoryTypeInfoSecVarCheckLib/MemoryTypeInfoSecVarCheckLib.inf # MU_CHANGE TCBZ1086
  MemoryTypeInformationChangeLib |MdeModulePkg/Library/MemoryTypeInformationChangeLibNull/MemoryTypeInformationChangeLibNull.inf
  MtrrLib                        |UefiCpuPkg/Library/MtrrLib/MtrrLib.inf # Memory Type Range Register (https://en.wikipedia.org/wiki/Memory_type_range_register)
  DxeMemoryProtectionHobLib      |MdeModulePkg/Library/MemoryProtectionHobLibNull/DxeMemoryProtectionHobLibNull.inf
  ExceptionPersistenceLib        |MsCorePkg/Library/ExceptionPersistenceLibCmos/ExceptionPersistenceLibCmos.inf
  CpuPageTableLib                |UefiCpuPkg/Library/CpuPageTableLib/CpuPageTableLib.inf
  FlatPageTableLib               |UefiTestingPkg/Library/FlatPageTableLib/FlatPageTableLib.inf
  ImagePropertiesRecordLib       |MdeModulePkg/Library/ImagePropertiesRecordLib/ImagePropertiesRecordLib.inf
  MemoryAllocationLib            |MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf

#CPU/SMBUS/Peripherals Libraries
  CpuLib                         |MdePkg/Library/BaseCpuLib/BaseCpuLib.inf
  SynchronizationLib             |MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  LocalApicLib                   |UefiCpuPkg/Library/BaseXApicX2ApicLib/BaseXApicX2ApicLib.inf
  SmbusLib                       |MdePkg/Library/BaseSmbusLibNull/BaseSmbusLibNull.inf
  CacheMaintenanceLib            |MdePkg/Library/BaseCacheMaintenanceLib/BaseCacheMaintenanceLib.inf
  MicrocodeLib                   |UefiCpuPkg/Library/MicrocodeLib/MicrocodeLib.inf
  
[LibraryClasses.common.DXE_SMM_DRIVER]
  MemoryAllocationLib            |MdePkg/Library/SmmMemoryAllocationLib/SmmMemoryAllocationLib.inf
  SmmMemLib                      |MdePkg/Library/SmmMemLib/SmmMemLib.inf
  MmServicesTableLib             |MdePkg/Library/MmServicesTableLib/MmServicesTableLib.inf
  SmmServicesTableLib            |MdePkg/Library/SmmServicesTableLib/SmmServicesTableLib.inf
  RngLib                         |MdeModulePkg/Library/BaseRngLibTimerLib/BaseRngLibTimerLib.inf
  AdvLoggerAccessLib             |AdvLoggerPkg/Library/AdvLoggerSmmAccessLib/AdvLoggerSmmAccessLib.inf
  
[Components]
  UefiTestingPkg/AuditTests/BootAuditTest/UEFI/BootAuditTestApp.inf
  UefiTestingPkg/AuditTests/TpmEventLogAudit/TpmEventLogAuditTestApp.inf
  UefiTestingPkg/AuditTests/UefiVarLockAudit/UEFI/UefiVarLockAuditTestApp.inf
  UefiTestingPkg/Library/FlatPageTableLib/FlatPageTableLib.inf
  UefiTestingPkg/AuditTests/DMAProtectionAudit/UEFI/DMAVTdProtectionUnitTestApp.inf 
  UefiTestingPkg/AuditTests/PagingAudit/UEFI/DxePagingAuditTestApp.inf 
  UefiTestingPkg/AuditTests/DMAProtectionAudit/UEFI/DMAIVRSProtectionUnitTestApp.inf
  UefiTestingPkg/AuditTests/TpmDmpLog/TpmIntegrityAuditTestApp.inf
  
#FunctionalSystemTests
  UefiTestingPkg/FunctionalSystemTests/MemmapAndMatTestApp/MemmapAndMatTestApp.inf
  UefiTestingPkg/FunctionalSystemTests/MorLockTestApp/MorLockTestApp.inf
  UefiTestingPkg/FunctionalSystemTests/MemoryAttributeProtocolFuncTestApp/MemoryAttributeProtocolFuncTestApp.inf
  UefiTestingPkg/FunctionalSystemTests/MemoryProtectionTest/App/DxeMemoryProtectionTestApp.inf
 
[BuildOptions]
  # avoid PCD value error
  *_*_*_CC_FLAGS = -D DISABLE_NEW_DEPRECATED_INTERFACES /GS-