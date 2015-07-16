header_paths = [
]

defines = {
}

flags = [
    '-Wall',
    '-Werror',
]

deps = [
]

sources = [
    'src/DeviceInfo.m',
    'src/YearClass.m',
]

features = [
]

Import('env')
env.BuildLibrary('DeviceYearClass', sources, header_paths=header_paths, static=True, flags=flags, defines=defines, deps=deps, features=features)

# Build Java ...

java_sources = [
    "yearclass/src/main/java/com/facebook/device/yearclass/DeviceInfo.java",
    "yearclass/src/main/java/com/facebook/device/yearclass/YearClass.java",
]

aidl_sources = [
]

java_deps = [
]

java_libs = [
]

java_paths = [
    'yearclass/src/main/java',
]

env.BuildJava("DeviceYearClassJava", java_sources, java_paths, java_deps, libs=java_libs, output=True, aidl_sources=aidl_sources)
