################################################################################
#									       #
#     Shared variables:							       #
#	- PROJECT							       #
#	- DRIVERS							       #
#	- INCLUDE							       #
#	- PLATFORM_DRIVERS						       #
#	- NO-OS								       #
#									       #
################################################################################
SRC_DIRS += $(PROJECT)/src
SRC_DIRS += $(NO-OS)/iio/iio_ad713x
SRC_DIRS += $(NO-OS)/iio/iio_axi_adc
SRC_DIRS += $(NO-OS)/iio/iio_axi_dac

SRC_DIRS += $(NO-OS)/libraries/iio/
#LIBRARIES += iio

SRCS := $(PROJECT)/src/ad713x_fmc.c
SRCS += $(DRIVERS)/spi/spi.c						\
	$(DRIVERS)/gpio/gpio.c						\
	$(DRIVERS)/adc/ad713x/ad713x.c					\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.c				\
	$(DRIVERS)/axi_core/spi_engine/spi_engine.c			\
	$(DRIVERS)/axi_core/axi_adc_core/axi_adc_core.c			\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.c				\
	$(NO-OS)/util/util.c						\
	$(NO-OS)/util/fifo.c						\
	$(NO-OS)/util/list.c
SRCS +=	$(PLATFORM_DRIVERS)/axi_io.c					\
	$(PLATFORM_DRIVERS)/uart.c					\
	$(PLATFORM_DRIVERS)/irq.c					\
	$(PLATFORM_DRIVERS)/xilinx_gpio.c				\
	$(PLATFORM_DRIVERS)/xilinx_spi.c				\
	$(PLATFORM_DRIVERS)/delay.c

INCS += $(DRIVERS)/adc/ad713x/ad713x.h					\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.h				\
	$(DRIVERS)/axi_core/spi_engine/spi_engine.h			\
	$(DRIVERS)/axi_core/spi_engine/spi_engine_private.h		\
	$(DRIVERS)/axi_core/axi_dmac/axi_dmac.h				\
	$(DRIVERS)/axi_core/axi_adc_core/axi_adc_core.h
INCS +=	$(PLATFORM_DRIVERS)/spi_extra.h					\
	$(PLATFORM_DRIVERS)/irq_extra.h					\
	$(PLATFORM_DRIVERS)/uart_extra.h				\
	$(PLATFORM_DRIVERS)/gpio_extra.h
INCS +=	$(INCLUDE)/xml.h						\
	$(INCLUDE)/fifo.h						\
	$(INCLUDE)/list.h						\
	$(INCLUDE)/axi_io.h						\
	$(INCLUDE)/spi.h						\
	$(INCLUDE)/gpio.h						\
	$(INCLUDE)/error.h						\
	$(INCLUDE)/delay.h						\
	$(INCLUDE)/irq.h						\
	$(INCLUDE)/uart.h						\
	$(INCLUDE)/util.h
