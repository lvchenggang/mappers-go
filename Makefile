.PHONY: all
all: modbusmapper opcuamapper

.PHONY: modbusmapper
modbusmapper:
	go build -o ./pkg/modbus/modbus ./pkg/modbus 
.PHONY: modbusmapper_image
modbusmapper_image:modbusmapper
	sudo docker build -t modbusmapper:v1.0 ./pkg/modbus

.PHONY: opcuamapper
opcuamapper:
	go build -o ./pkg/opcua/opcua ./pkg/opcua
.PHONY: opcuamapper_image
opcuamapper_image:opcuamapper
	sudo docker build -t opcuamapper:v1.0 ./pkg/opcua

clean:
	rm -f ./pkg/modbus/modbus ./pkg/opcua/modbus
