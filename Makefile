
TARGET = OrgProtocolClient.app
SOURCE = src/org-protocol-client.scpt

all: $(SOURCE)
	osacompile -o $(TARGET) $(SOURCE)
	plutil -insert CFBundleURLTypes  -json '[ { "CFBundleURLName": "org-protocol handler", "CFBundleURLSchemes": [ "org-protocol" ] } ]' OrgProtocolClient.app/Contents/Info.plist

clean:
	$(RM) -rf $(TARGET)
