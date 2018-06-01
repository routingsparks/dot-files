#!/bin/bash
# Based on http://openweathermap.org/current

API_KEY="7cbcc6a52b424b5e58e59f4f2be9d63b"

# Check on http://openweathermap.org/find
# CITY_ID="${BLOCK_INSTANCE}"
CITY_ID="4762894"

URGENT_LOWER=32
URGENT_HIGHER=100

FONT_DIR=$HOME/.config/i3/fonts/weather-icons-master/svg

ICON_SUNNY=""
ICON_CLOUDY=""
ICON_RAINY=""
ICON_STORM=""
ICON_SNOW=""
ICON_FOG=""
ICON_HAZE=""

SYMBOL_FAHRENHEIT=""


WEATHER_URL="http://api.openweathermap.org/data/2.5/weather?id=${CITY_ID}&appid=${API_KEY}&units=imperial"

WEATHER_INFO=$(wget -qO- "${WEATHER_URL}")
WEATHER_MAIN=$(echo "${WEATHER_INFO}" | grep -o -e '\"main\":\"[a-Z]*\"' | awk -F ':' '{print $2}' | tr -d '"')
WEATHER_TEMP=$(echo "${WEATHER_INFO}" | grep -o -e '\"temp\":\-\?[0-9]*' | awk -F ':' '{print $2}' | tr -d '"')

if [[ "${WEATHER_MAIN}" = *Snow* ]]; then
  echo "${ICON_SNOW} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_SNOW} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
elif [[ "${WEATHER_MAIN}" = *Rain* ]] || [[ "${WEATHER_MAIN}" = *Drizzle* ]]; then
  echo "${ICON_RAINY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_RAINY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
elif [[ "${WEATHER_MAIN}" = *Haze* ]]; then
  echo "${ICON_HAZE} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_HAZE} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
elif [[ "${WEATHER_MAIN}" = *Cloud* ]]; then
  echo "${ICON_CLOUDY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_CLOUDY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
elif [[ "${WEATHER_MAIN}" = *Clear* ]]; then
  echo "${ICON_SUNNY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_SUNNY} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
elif [[ "${WEATHER_MAIN}" = *Fog* ]] || [[ "${WEATHER_MAIN}" = *Mist* ]]; then
  echo "${ICON_FOG} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${ICON_FOG} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
else
  echo "${WEATHER_MAIN} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo "${WEATHER_MAIN} ${WEATHER_TEMP}${SYMBOL_FAHRENHEIT}"
  echo ""
fi

if [[ "${WEATHER_TEMP}" -lt "${URGENT_LOWER}" ]] || [[ "${WEATHER_TEMP}" -gt "${URGENT_HIGHER}" ]]; then
  exit 33
fi
