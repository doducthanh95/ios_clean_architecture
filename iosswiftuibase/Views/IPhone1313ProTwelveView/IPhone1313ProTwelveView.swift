import SwiftUI

struct IPhone1313ProTwelveView: View {
    @StateObject var iPhone1313ProTwelveViewModel = IPhone1313ProTwelveViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblHeyThere)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(117.0))
                    Text(StringConstants.kLblWelcomeBack)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(80.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(47.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(46.0))
                .padding(.horizontal, getRelativeWidth(30.0))
                VStack {
                    Group {
                        HStack {
                            Spacer()
                            Image("img_message")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(11.0))
                            TextField(StringConstants.kLblEmail,
                                      text: $iPhone1313ProTwelveViewModel.labelText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                                .keyboardType(.emailAddress)
                        }
                        .onChange(of: iPhone1313ProTwelveViewModel.labelText) { newValue in

                            iPhone1313ProTwelveViewModel.isValidLabelText = newValue
                                .isValidEmail(isMandatory: true)
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        if !iPhone1313ProTwelveViewModel.isValidLabelText {
                            Text("Please enter valid email.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                        }
                    }
                    Group {
                        HStack {
                            Spacer()
                            Image("img_lock")
                                .resizable()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(18.0))
                                .padding(.trailing, getRelativeWidth(13.0))
                            SecureField(StringConstants.kLblPassword,
                                        text: $iPhone1313ProTwelveViewModel.labeloneText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                                .keyboardType(.default)
                            Image("img_hide")
                                .resizable()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeHeight(11.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(17.0))
                            Spacer()
                        }
                        .onChange(of: iPhone1313ProTwelveViewModel.labeloneText) { newValue in

                            iPhone1313ProTwelveViewModel.isValidLabeloneText = newValue
                                .isValidPassword(isMandatory: true)
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray50,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(15.0))
                        if !iPhone1313ProTwelveViewModel.isValidLabeloneText {
                            Text("Please enter valid password.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                        }
                    }
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(111.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(35.0))
                .padding(.horizontal, getRelativeWidth(30.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgForgotYourPas)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(13.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(88.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(13.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(14.0))
                .padding(.horizontal, getRelativeWidth(30.0))
                VStack {
                    HStack {
                        Image("img_login")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(120.0))
                        Text(StringConstants.kLblLogin)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(23.0))
                            .padding(.leading, getRelativeWidth(12.0))
                            .padding(.trailing, getRelativeWidth(118.0))
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                               bottomRight: 30.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .IndigoA100,
                                    ColorConstants
                                        .Blue200]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(1.0),
                                   alignment: .bottom)
                            .background(ColorConstants.Gray300)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(4.0))
                        Text(StringConstants.kLblOr)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(1.0),
                                   alignment: .bottom)
                            .background(ColorConstants.Gray300)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(12.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_group9684")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray300,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(Color.clear.opacity(0.7)))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_group9683")
                        })
                        .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                bottomRight: 14.0)
                                .stroke(ColorConstants.Gray300,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.leading, getRelativeWidth(30.0))
                    }
                    .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(31.0))
                    Text(StringConstants.kMsgDonTHaveAnA)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(34.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                }
                .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(219.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(285.0))
                .padding(.horizontal, getRelativeWidth(30.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct IPhone1313ProTwelveView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone1313ProTwelveView()
    }
}
