
ASSEMBLY_COMPILER_COMMAND = gmcs
ASSEMBLY_COMPILER_FLAGS =  -noconfig -codepage:utf8 -warn:4 -debug -d:DEBUG
ASSEMBLY = ../bin/mautil.exe
COMPILE_TARGET = exe
ASSEMBLY_WRAPPER = mautil
ASSEMBLY_WRAPPER_IN = mautil.in
PROJECT_REFERENCES =
BUILD_DIR = ../bin

	
all: $(ASSEMBLY)

FILES =  \
	AssemblyInfo.cs \
	Main.cs 

DATA_FILES = 

RESOURCES = 

EXTRAS = 

REFERENCES = -r:System

DLL_REFERENCES =  \
	../Mono.Addins.Setup/obj/Debug/Mono.Addins.Setup.dll \
	../Mono.Addins/obj/Debug/Mono.Addins.dll 

$(ASSEMBLY).mdb: $(ASSEMBLY)

$(ASSEMBLY): $(build_sources) $(build_resources) $(build_datafiles) 
	mkdir -p $(dir $(ASSEMBLY))		

	$(ASSEMBLY_COMPILER_COMMAND) $(ASSEMBLY_COMPILER_FLAGS) -out:$@ -target:$(COMPILE_TARGET) $(build_sources) $(build_resources_embed) $(build_references_ref)

include $(top_srcdir)/Makefile.include

pkglibdir = $(libdir)/mono/mono-addins
pkglib_SCRIPTS = $(ASSEMBLY) $(build_datafiles)

man_MANS = mautil.1
EXTRA_DIST += $(man_MANS)

