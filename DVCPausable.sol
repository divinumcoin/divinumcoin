/**
 * @title Pausable
 */
contract DVCPausable is Pausable, DVCModerated {
  /**
   * called by the owner or moderator to pause, triDVCers stopped state
   */
  function pause() onlyOwnerOrModerator whenNotPaused {
    paused = true;
    Pause();
  }

  /**
   * called by the owner or moderator to unpause, returns to normal state
   */
  function unpause() onlyOwnerOrModerator whenPaused {
    paused = false;
    Unpause();
  }
}
