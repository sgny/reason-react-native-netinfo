type t;

type netInfoStateType = string;

[@bs.inline]
let none = "none";

[@bs.inline]
let unknown = "unknown";

[@bs.inline]
let cellular = "cellular";

[@bs.inline]
let wifi = "wifi";

[@bs.inline]
let bluetooth = "bluetooth";

[@bs.inline]
let ethernet = "ethernet";

[@bs.inline]
let wimax = "wimax";

[@bs.inline]
let vpn = "vpn";

[@bs.inline]
let other = "other";

type netInfoCellularGeneration = string;

[@bs.inline]
let net2G = "2g";

[@bs.inline]
let net3G = "3g";

[@bs.inline]
let net4G = "4g";

[@bs.inline]
let null = "null";

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
