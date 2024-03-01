// htps://api.ipify.org

class Ip {
  String ip;
  String region;
  String postalCode;
  String city;
  Ip({required this.ip,required this.city,required this.postalCode, required this.region});

  @override
  String toString() {
    String res = "my ip is: $ip \nmy region is : $region \nmy postal code : $postalCode \nmy city is : $city";
    return res;
  }
}