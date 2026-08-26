// Function to show the win message modal
function showWinMessage(timeLeft, hintsUsed, totalAttempts) {
  const modalOverlay = document.getElementById('modal-overlay');
  const modalTitle = document.getElementById('modal-title');
  const modalDesc = document.getElementById('modal-desc');
  const modalButton = document.getElementById('modal-button');

  modalTitle.textContent = '🎉 You Escaped! 🎉';
  modalDesc.innerHTML = `
    <p>Time left: ${formatTime(timeLeft)}</p>
    <p>Hints used: ${hintsUsed}</p>
    <p>Total attempts: ${totalAttempts}</p>
  `;

  modalButton.textContent = 'Next Level';
  modalButton.onclick = () => {
    modalOverlay.hidden = true;
    startNextLevel();
  };

  modalOverlay.hidden = false;
  modalButton.focus();
}

// Helper to format seconds as MM:SS
function formatTime(seconds) {
  const m = Math.floor(seconds / 60).toString().padStart(2, '0');
  const s = (seconds % 60).toString().padStart(2, '0');
  return `${m}:${s}`;
}

// Example function to start the next level or reset game
function startNextLevel() {
  // Implement your logic here:
  // For example, reset puzzles, timer, hints, or load new puzzle set
  alert('Starting next level... (implement your logic here)');
  // Or reload page to reset:
  // location.reload();
}