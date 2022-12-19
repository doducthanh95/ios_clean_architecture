import SwiftUI

struct IPhone1313ProOneView: View {
    @StateObject var iPhone1313ProOneViewModel = IPhone1313ProOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(StringConstants.kLblFitnestx)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(36.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(36.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(368.0))
                        .padding(.horizontal, getRelativeWidth(38.0))
                    Text(StringConstants.kMsgEverybodyCanT)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(38.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblGetStarted)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(22.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(315.0),
                                       height: getRelativeHeight(60.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 30.0, topRight: 30.0,
                                                           bottomLeft: 30.0, bottomRight: 30.0)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .IndigoA100,
                                                ColorConstants
                                                    .Blue200]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                                .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                                .padding(.vertical, getRelativeHeight(268.0))
                                .padding(.horizontal, getRelativeWidth(38.0))
                        }
                    })
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
                    .shadow(color: ColorConstants.IndigoA1004c, radius: 22, x: 0, y: 10)
                    .padding(.vertical, getRelativeHeight(268.0))
                    .padding(.horizontal, getRelativeWidth(38.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: IPhone1313ProTwelveView(),
                                   tag: "IPhone1313ProTwelveView",
                                   selection: $iPhone1313ProOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            iPhone1313ProOneViewModel.nextScreen = "IPhone1313ProTwelveView"
        }
    }
}

struct IPhone1313ProOneView_Previews: PreviewProvider {
    static var previews: some View {
        IPhone1313ProOneView()
    }
}
