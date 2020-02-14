import Foundation
import Postbox
import Display

public protocol ChatListController: ViewController {
    var context: AccountContext { get }
    var lockViewFrame: CGRect? { get }
    
    func activateSearch()
    func deactivateSearch(animated: Bool)
    func activateCompose()
    func maybeAskForPeerChatRemoval(peer: RenderedPeer, deleteGloballyIfPossible: Bool, completion: @escaping (Bool) -> Void, removed: @escaping () -> Void)
    
    var ngfilter: NiceChatListNodePeersFilter? { get set }
    var filterIndex: Int32? { get set }
    var isMissed: Bool { get set }
}
