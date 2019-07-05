type t;

type netInfoStateType;

[@bs.inline "none"]
let none: netInfoStateType;

[@bs.inline "unknown"]
let unknown: netInfoStateType;

[@bs.inline "cellular"]
let cellular: netInfoStateType;

[@bs.inline "wifi"]
let wifi: netInfoStateType;

[@bs.inline "bluetooth"]
let bluetooth: netInfoStateType;

[@bs.inline "ethernet"]
let ethernet: netInfoStateType;

[@bs.inline "wimax"]
let wimax: netInfoStateType;

[@bs.inline "wimax"]
let wimax: netInfoStateType;

[@bs.inline "vpn"]
let vpn: netInfoStateType;

[@bs.inline "other"]
let other: netInfoStateType;

type netInfoCellularGeneration;

[@bs.inline "2g"]
let net2G: netInfoCellularGeneration;

[@bs.inline "3g"]
let net3G: netInfoCellularGeneration;

[@bs.inline "4g"]
let net4G: netInfoCellularGeneration;

[@bs.inline "null"]
let null: netInfoCellularGeneration;

type details = {
  .
  "isConnectionExpensive": bool,
  "cellularGeneration": Js.Null.t(netInfoCellularGeneration),
};

type netInfoState = {
  .
  "_type": netInfoStateType,
  "isConnected": bool,
  "details": Js.Null.t(details),
};

[@bs.module "@react-native-community/netinfo"]
external fetch: unit => Js.Promise.t(netInfoState) = "";

[@bs.module "@react-native-community/netinfo"]
external addEventListener: (netInfoState => unit) => t = "";

[@bs.module "@react-native-community/netinfo"]
external useNetInfo: unit => netInfoState = "";
