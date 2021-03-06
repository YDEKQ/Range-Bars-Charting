#include <AZ-INVEST/SDK/CommonSettings.mqh>
#ifdef P_RENKO_BR_PRO
   #include <az-invest/sdk/CustomChartInputsBR.mqh>
#else
   #include <az-invest/sdk/CustomChartInputs.mqh>
#endif

interface ICustomChartSettings
{
   int GetHandle();
   void Set();
   void Save();
   bool Load();
   void Delete();
   bool Changed(double currentRuntimeId); 

   #ifdef USE_CUSTOM_SYMBOL
      CUSTOM_SYMBOL_SETTINGS     GetCustomSymbolSettings();
   #else   
      ALERT_INFO_SETTINGS        GetAlertInfoSettings(void);
      CHART_INDICATOR_SETTINGS   GetChartIndicatorSettings(void);   
   #endif
};
