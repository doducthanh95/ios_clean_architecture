import SwiftUI

struct IPhone1313ProEighteenView: View {
    @StateObject var iPhone1313ProEighteenViewModel = IPhone1313ProEighteenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    HStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblWelcomeBack2)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblStefaniWong)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(138.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                            }
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(49.0),
                                   alignment: .bottom)
                            Spacer()
                            Button(action: {}, label: {
                                Image("img_notification")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.Gray50))
                            .shadow(color: ColorConstants.Gray90011, radius: 40, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(53.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(53.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(30.0))
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .center) {
                                Image("img_bannerdots")
                                    .resizable()
                                    .frame(width: getRelativeWidth(315.0),
                                           height: getRelativeHeight(146.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgBmiBodyMass)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(162.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kMsgYouHaveANorm)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(157.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(8.0))
                                            .padding(.trailing, getRelativeWidth(5.0))
                                        Button(action: {}, label: {
                                            HStack(spacing: 0) {
                                                Text(StringConstants.kLblViewMore)
                                                    .font(FontScheme
                                                        .kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                                                    .fontWeight(.semibold)
                                                    .padding(.horizontal, getRelativeWidth(21.0))
                                                    .padding(.vertical, getRelativeHeight(12.0))
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.center)
                                                    .frame(width: getRelativeWidth(95.0),
                                                           height: getRelativeHeight(35.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 17.5,
                                                                               topRight: 17.5,
                                                                               bottomLeft: 17.5,
                                                                               bottomRight: 17.5)
                                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                        .DeepPurpleA100,
                                                                    ColorConstants
                                                                        .Pink100]),
                                                                startPoint: .topLeading,
                                                                endPoint: .bottomTrailing)))
                                                    .padding(.top, getRelativeHeight(15.0))
                                                    .padding(.trailing, getRelativeWidth(10.0))
                                            }
                                        })
                                        .frame(width: getRelativeWidth(95.0),
                                               height: getRelativeHeight(35.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                                   bottomLeft: 17.5,
                                                                   bottomRight: 17.5)
                                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                            .DeepPurpleA100,
                                                        ColorConstants
                                                            .Pink100]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing)))
                                        .padding(.top, getRelativeHeight(15.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(162.0),
                                           height: getRelativeHeight(94.0), alignment: .center)
                                    ZStack(alignment: .topTrailing) {
                                        Image("img_bannerpieell")
                                            .resizable()
                                            .frame(width: getRelativeWidth(106.0),
                                                   height: getRelativeWidth(106.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl201)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(23.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(70.67))
                                            .padding(.leading, getRelativeWidth(63.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeWidth(106.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(7.0))
                                }
                                .frame(width: getRelativeWidth(275.0),
                                       height: getRelativeHeight(106.0), alignment: .center)
                                .padding(.all, getRelativeWidth(20.0))
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(20.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(146.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 22.0, topRight: 22.0,
                                                       bottomLeft: 22.0, bottomRight: 22.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .IndigoA100,
                                            ColorConstants
                                                .Blue200]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                            HStack {
                                Text(StringConstants.kLblTodayTarget)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(22.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                Spacer()
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblCheck)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(68.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 14.0,
                                                                       topRight: 14.0,
                                                                       bottomLeft: 14.0,
                                                                       bottomRight: 14.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .IndigoA100,
                                                            ColorConstants
                                                                .Blue200]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .padding(.top, getRelativeHeight(15.0))
                                            .padding(.bottom, getRelativeHeight(14.0))
                                            .padding(.trailing, getRelativeWidth(20.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                           bottomLeft: 14.0, bottomRight: 14.0)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .IndigoA100,
                                                ColorConstants
                                                    .Blue200]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.bottom, getRelativeHeight(14.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            }
                            .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(57.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .IndigoA1006c,
                                            ColorConstants
                                                .Blue2006c]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            .padding(.top, getRelativeHeight(30.0))
                            Text(StringConstants.kLblActivityStatus)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(118.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(35.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLblLatestWorkout)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(123.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblSeeMore)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray500)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(58.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(16.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(777.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            WorkoutcardCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(315.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(18.0))
                        }
                        .frame(width: getRelativeWidth(315.0), alignment: .topLeading)
                    }
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .frame(width: getRelativeWidth(375.0), height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                VStack(alignment: .leading, spacing: 0) {
                    Text("Navbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(90.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(90.0),
                       alignment: .leading)
            }
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
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

struct IPhone1313ProEighteenView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone1313ProEighteenView()
    }
}
