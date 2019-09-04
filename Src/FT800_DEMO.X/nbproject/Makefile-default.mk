#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=FATFS/diskio.c FATFS/ff.c FT800/FT800_Driver.c FT800/FT800_Graphics.c FT800/FT800_Audio.c FT800/FT800_Port.c main.c my_delays.c FT800/FT800_SD.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/FATFS/diskio.o ${OBJECTDIR}/FATFS/ff.o ${OBJECTDIR}/FT800/FT800_Driver.o ${OBJECTDIR}/FT800/FT800_Graphics.o ${OBJECTDIR}/FT800/FT800_Audio.o ${OBJECTDIR}/FT800/FT800_Port.o ${OBJECTDIR}/main.o ${OBJECTDIR}/my_delays.o ${OBJECTDIR}/FT800/FT800_SD.o
POSSIBLE_DEPFILES=${OBJECTDIR}/FATFS/diskio.o.d ${OBJECTDIR}/FATFS/ff.o.d ${OBJECTDIR}/FT800/FT800_Driver.o.d ${OBJECTDIR}/FT800/FT800_Graphics.o.d ${OBJECTDIR}/FT800/FT800_Audio.o.d ${OBJECTDIR}/FT800/FT800_Port.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/my_delays.o.d ${OBJECTDIR}/FT800/FT800_SD.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/FATFS/diskio.o ${OBJECTDIR}/FATFS/ff.o ${OBJECTDIR}/FT800/FT800_Driver.o ${OBJECTDIR}/FT800/FT800_Graphics.o ${OBJECTDIR}/FT800/FT800_Audio.o ${OBJECTDIR}/FT800/FT800_Port.o ${OBJECTDIR}/main.o ${OBJECTDIR}/my_delays.o ${OBJECTDIR}/FT800/FT800_SD.o

# Source Files
SOURCEFILES=FATFS/diskio.c FATFS/ff.c FT800/FT800_Driver.c FT800/FT800_Graphics.c FT800/FT800_Audio.c FT800/FT800_Port.c main.c my_delays.c FT800/FT800_SD.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX534F064H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/FATFS/diskio.o: FATFS/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FATFS" 
	@${RM} ${OBJECTDIR}/FATFS/diskio.o.d 
	@${RM} ${OBJECTDIR}/FATFS/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/FATFS/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FATFS/diskio.o.d" -o ${OBJECTDIR}/FATFS/diskio.o FATFS/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FATFS/ff.o: FATFS/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FATFS" 
	@${RM} ${OBJECTDIR}/FATFS/ff.o.d 
	@${RM} ${OBJECTDIR}/FATFS/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/FATFS/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FATFS/ff.o.d" -o ${OBJECTDIR}/FATFS/ff.o FATFS/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Driver.o: FT800/FT800_Driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Driver.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Driver.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Driver.o.d" -o ${OBJECTDIR}/FT800/FT800_Driver.o FT800/FT800_Driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Graphics.o: FT800/FT800_Graphics.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Graphics.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Graphics.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Graphics.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Graphics.o.d" -o ${OBJECTDIR}/FT800/FT800_Graphics.o FT800/FT800_Graphics.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Audio.o: FT800/FT800_Audio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Audio.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Audio.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Audio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Audio.o.d" -o ${OBJECTDIR}/FT800/FT800_Audio.o FT800/FT800_Audio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Port.o: FT800/FT800_Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Port.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Port.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Port.o.d" -o ${OBJECTDIR}/FT800/FT800_Port.o FT800/FT800_Port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/my_delays.o: my_delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/my_delays.o.d 
	@${RM} ${OBJECTDIR}/my_delays.o 
	@${FIXDEPS} "${OBJECTDIR}/my_delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/my_delays.o.d" -o ${OBJECTDIR}/my_delays.o my_delays.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_SD.o: FT800/FT800_SD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_SD.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_SD.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_SD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_SD.o.d" -o ${OBJECTDIR}/FT800/FT800_SD.o FT800/FT800_SD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
else
${OBJECTDIR}/FATFS/diskio.o: FATFS/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FATFS" 
	@${RM} ${OBJECTDIR}/FATFS/diskio.o.d 
	@${RM} ${OBJECTDIR}/FATFS/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/FATFS/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FATFS/diskio.o.d" -o ${OBJECTDIR}/FATFS/diskio.o FATFS/diskio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FATFS/ff.o: FATFS/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FATFS" 
	@${RM} ${OBJECTDIR}/FATFS/ff.o.d 
	@${RM} ${OBJECTDIR}/FATFS/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/FATFS/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FATFS/ff.o.d" -o ${OBJECTDIR}/FATFS/ff.o FATFS/ff.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Driver.o: FT800/FT800_Driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Driver.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Driver.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Driver.o.d" -o ${OBJECTDIR}/FT800/FT800_Driver.o FT800/FT800_Driver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Graphics.o: FT800/FT800_Graphics.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Graphics.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Graphics.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Graphics.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Graphics.o.d" -o ${OBJECTDIR}/FT800/FT800_Graphics.o FT800/FT800_Graphics.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Audio.o: FT800/FT800_Audio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Audio.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Audio.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Audio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Audio.o.d" -o ${OBJECTDIR}/FT800/FT800_Audio.o FT800/FT800_Audio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_Port.o: FT800/FT800_Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_Port.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_Port.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_Port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_Port.o.d" -o ${OBJECTDIR}/FT800/FT800_Port.o FT800/FT800_Port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/my_delays.o: my_delays.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/my_delays.o.d 
	@${RM} ${OBJECTDIR}/my_delays.o 
	@${FIXDEPS} "${OBJECTDIR}/my_delays.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/my_delays.o.d" -o ${OBJECTDIR}/my_delays.o my_delays.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
${OBJECTDIR}/FT800/FT800_SD.o: FT800/FT800_SD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FT800" 
	@${RM} ${OBJECTDIR}/FT800/FT800_SD.o.d 
	@${RM} ${OBJECTDIR}/FT800/FT800_SD.o 
	@${FIXDEPS} "${OBJECTDIR}/FT800/FT800_SD.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -Os -MMD -MF "${OBJECTDIR}/FT800/FT800_SD.o.d" -o ${OBJECTDIR}/FT800/FT800_SD.o FT800/FT800_SD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I ./ -I FT800/ -I FATFS/
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FT800_DEMO.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
